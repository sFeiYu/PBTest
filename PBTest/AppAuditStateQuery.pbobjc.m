// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: AppAuditStateQuery.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#import "AppAuditStateQuery.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - AppAuditStateQueryRoot

@implementation AppAuditStateQueryRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - AppAuditStateQueryRoot_FileDescriptor

static GPBFileDescriptor *AppAuditStateQueryRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"AppAuditStateQuery"
                                                     syntax:GPBFileSyntaxProto2];
  }
  return descriptor;
}

#pragma mark - AppAuditStateQueryOnPack

@implementation AppAuditStateQueryOnPack

@dynamic hasVersionNumber, versionNumber;

typedef struct AppAuditStateQueryOnPack__storage_ {
  uint32_t _has_storage_[1];
  NSString *versionNumber;
} AppAuditStateQueryOnPack__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "versionNumber",
        .dataTypeSpecific.clazz = Nil,
        .number = AppAuditStateQueryOnPack_FieldNumber_VersionNumber,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(AppAuditStateQueryOnPack__storage_, versionNumber),
        .flags = (GPBFieldFlags)(GPBFieldRequired | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AppAuditStateQueryOnPack class]
                                     rootClass:[AppAuditStateQueryRoot class]
                                          file:AppAuditStateQueryRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AppAuditStateQueryOnPack__storage_)
                                         flags:GPBDescriptorInitializationFlag_UsesClassRefs];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001M\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - AppAuditStateQueryToPack

@implementation AppAuditStateQueryToPack

@dynamic hasReturnflag, returnflag;
@dynamic hasReturntext, returntext;
@dynamic hasConfigContent, configContent;

typedef struct AppAuditStateQueryToPack__storage_ {
  uint32_t _has_storage_[1];
  int32_t returnflag;
  int32_t configContent;
  NSString *returntext;
} AppAuditStateQueryToPack__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "returnflag",
        .dataTypeSpecific.clazz = Nil,
        .number = AppAuditStateQueryToPack_FieldNumber_Returnflag,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(AppAuditStateQueryToPack__storage_, returnflag),
        .flags = GPBFieldRequired,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "returntext",
        .dataTypeSpecific.clazz = Nil,
        .number = AppAuditStateQueryToPack_FieldNumber_Returntext,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(AppAuditStateQueryToPack__storage_, returntext),
        .flags = GPBFieldRequired,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "configContent",
        .dataTypeSpecific.clazz = Nil,
        .number = AppAuditStateQueryToPack_FieldNumber_ConfigContent,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(AppAuditStateQueryToPack__storage_, configContent),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AppAuditStateQueryToPack class]
                                     rootClass:[AppAuditStateQueryRoot class]
                                          file:AppAuditStateQueryRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AppAuditStateQueryToPack__storage_)
                                         flags:GPBDescriptorInitializationFlag_UsesClassRefs];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\003M\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
