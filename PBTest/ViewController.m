//
//  ViewController.m
//  PBTest
//
//  Created by KnowChat03 on 2020/3/4.
//  Copyright © 2020 KnowChat03. All rights reserved.
//

#import "ViewController.h"
#import "AppAuditStateQuery.pbobjc.h"
#import "AFNetworking.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btnRequest;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_btnRequest addTarget:self action:@selector(requestEvent:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)requestEvent:(UIButton *)btn
{
//    AESKey =  @"4EK8C5M9W0A1XI93"
    AppAuditStateQueryOnPack *onPack = [AppAuditStateQueryOnPack new];
    onPack.versionNumber = @"3.0.0";
    
    
}



@end
