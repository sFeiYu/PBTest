// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: AppAuditStateQuery.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30003
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
//#if 30003 < GOOGLE_PROTOBUF_ OBJC_MIN_SUPPORTED_VERSION
//#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
//#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

NS_ASSUME_NONNULL_BEGIN

#pragma mark - AppAuditStateQueryRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
GPB_FINAL @interface AppAuditStateQueryRoot : GPBRootObject
@end

#pragma mark - AppAuditStateQueryOnPack

typedef GPB_ENUM(AppAuditStateQueryOnPack_FieldNumber) {
  AppAuditStateQueryOnPack_FieldNumber_VersionNumber = 1,
};

GPB_FINAL @interface AppAuditStateQueryOnPack : GPBMessage

/** 版本号 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *versionNumber;
/** Test to see if @c versionNumber has been set. */
@property(nonatomic, readwrite) BOOL hasVersionNumber;

@end

#pragma mark - AppAuditStateQueryToPack

typedef GPB_ENUM(AppAuditStateQueryToPack_FieldNumber) {
  AppAuditStateQueryToPack_FieldNumber_Returnflag = 1,
  AppAuditStateQueryToPack_FieldNumber_Returntext = 2,
  AppAuditStateQueryToPack_FieldNumber_ConfigContent = 3,
};

GPB_FINAL @interface AppAuditStateQueryToPack : GPBMessage

/** 成功返回:100; 失败返回:200; */
@property(nonatomic, readwrite) int32_t returnflag;

@property(nonatomic, readwrite) BOOL hasReturnflag;
/** 调用成功;调用失败 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *returntext;
/** Test to see if @c returntext has been set. */
@property(nonatomic, readwrite) BOOL hasReturntext;

/** 隐藏:0  显示:1 */
@property(nonatomic, readwrite) int32_t configContent;

@property(nonatomic, readwrite) BOOL hasConfigContent;
@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
