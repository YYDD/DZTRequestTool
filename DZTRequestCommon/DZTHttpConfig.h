//
//  DZTHttpConfig.h
//  DZTRequestTool
//
//  Created by YYDD on 2018/10/25.
//  Copyright © 2018年 com.yydd.dzt. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AFSecurityPolicy;

@interface DZTHttpConfig : NSObject

/**
 超时(http/https) default 20.0f
 */
@property(nonatomic,assign)NSTimeInterval timeOutInHttpManager;

/**
 超时(file) default 60.0f
 */
@property(nonatomic,assign)NSTimeInterval timeOutInFileManager;

/**
 超时(json) default 15.0f
 */
@property(nonatomic,assign)NSTimeInterval timeOutInJsonManager;

/**
 请求的ua(http/https)
 */
@property(nonatomic,strong)NSString *userAgentInHttpManager;

/**
 请求的ua(file)
 */
@property(nonatomic,strong)NSString *userAgentInFileManager;

/**
 请求的ua(json)
 */
@property(nonatomic,strong)NSString *userAgentInJsonManager;

/**
 header(http/https)
 */
@property(nonatomic,strong)NSDictionary *headerDictInHttpManager;

/**
 header(json)
 */
@property(nonatomic,strong)NSDictionary *headerDictInFileManager;

/**
 header(json)
 */
@property(nonatomic,strong)NSDictionary *headerDictInJsonManager;

/**
 证书认证(http/https)
 */
@property(nonatomic,strong)AFSecurityPolicy *securityPolicyInHttpManager;

/**
 证书认证(file)
 */
@property(nonatomic,strong)AFSecurityPolicy *securityPolicyInFileManager;

/**
 证书认证(json)
 */
@property(nonatomic,strong)AFSecurityPolicy *securityPolicyInJsonManager;


@end
