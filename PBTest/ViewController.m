//
//  ViewController.m
//  PBTest
//
//  Created by KnowChat03 on 2020/3/4.
//  Copyright © 2020 KnowChat03. All rights reserved.
//

#import "ViewController.h"
#import "AppAuditStateQuery.pbobjc.h"
#import <AFNetworking/AFNetworking.h>
#import <KCSecurityUtil/SecurityUtil.h>

#define BaseHTTPHost    @"http://web81test.whenchat.com/"
NSString *const AESKey = @"4EK8C5M9W0A1XI93";

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btnRequest;

@end

@implementation ViewController

static AFHTTPSessionManager *_mgr;
+ (AFHTTPSessionManager *)getManager
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
        config.timeoutIntervalForResource = 10;
        if (@available(iOS 9.0, *)) {
            config.shouldUseExtendedBackgroundIdleMode = YES;
        } else {
            // Fallback on earlier versions
        }
        config.timeoutIntervalForRequest = 10;
        _mgr = [[AFHTTPSessionManager alloc] initWithSessionConfiguration:config];
        _mgr.responseSerializer = [AFHTTPResponseSerializer serializer];
    });
    return _mgr;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_btnRequest addTarget:self action:@selector(requestEvent:) forControlEvents:UIControlEventTouchUpInside];
}


- (void)requestEvent:(UIButton *)btn{


    AppAuditStateQueryOnPack *onPack = [AppAuditStateQueryOnPack new];
    onPack.versionNumber = @"3.0.0";
    
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        NSString * urlstr = [NSString stringWithFormat:@"%@GCPort/PortCall?Unid=%@&Port=%@&CheckCode=%@",BaseHTTPHost,[self uuid],@"AppAuditStateQuery",[self getCheckCode]];
        AFHTTPSessionManager* manager = [ViewController getManager];
        manager.completionQueue = queue;
        NSURL* url = [[NSURL alloc] initWithString:urlstr];
        NSMutableURLRequest* req = [[NSMutableURLRequest alloc] initWithURL:url];

        if (onPack.data == nil)
        {
            NSLog(@"==========onPack.data == nil");
            return;
        }
    
        NSData* readyData = [SecurityUtil encryptAESData:onPack.data Key:AESKey];
        if (readyData == nil)
        {
           NSLog(@"==========readyData == nil");
            return;
        }

        // 加密
        req.HTTPBody = readyData;
        req.HTTPMethod = @"POST";
        __weak typeof(self) weakSelf = self;
        NSURLSessionDataTask *dataTask  = [manager dataTaskWithRequest:req completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
            dispatch_async(dispatch_get_main_queue(), ^{
                
               NSData* resultData = [SecurityUtil encryptAESData:responseObject Key:AESKey];
                id a = [[GPBMessage alloc] initWithData:responseObject error:nil];
                if (resultData == nil){
                    NSLog(@"==========resultData == nil");
                    return;
                }
                NSError* err = [[NSError alloc] initWithDomain:@"" code:0 userInfo:nil];
                AppAuditStateQueryToPack *toPack = [[AppAuditStateQueryToPack alloc] initWithData:resultData error:&err];
                NSLog(@"%@", toPack);
                if (toPack == nil){
                    NSLog(@"==========toPack == nil");
                    return;
                }
                
                
            });
        }];
        [dataTask resume];
    });
}

- (NSString*) uuid {
    CFUUIDRef puuid = CFUUIDCreate( NULL );
    CFStringRef uuidString = CFUUIDCreateString( NULL, puuid );
    NSString * result = (NSString *)CFBridgingRelease(CFStringCreateCopy( NULL, uuidString));
    CFRelease(puuid);
    CFRelease(uuidString);
    return [result stringByReplacingOccurrencesOfString:@"-" withString:@""];
}

- (NSString*)getCheckCode{

    NSString *currentVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    NSString *checkCode = [NSString stringWithFormat:@"%d;%@;iOS",0,currentVersion];
    return checkCode;
}


@end
