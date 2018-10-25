//
//  DZTHttpRequest.h
//  DZTRequestTool
//
//  Created by YYDD on 2018/10/25.
//  Copyright © 2018年 com.yydd.dzt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DZTHttpResponseObject.h"

@class DZTHttpConfig;

@interface DZTHttpRequest : NSObject

/**
 配置信息
 */
@property (nonatomic, strong) DZTHttpConfig *httpConfig;


/**
 get请求
 
 @param URLString url
 @param parameters 参数
 @param comp 回调
 */
+(void)requestByGet:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp;

/**
 post请求
 
 @param URLString url
 @param parameters 参数
 @param comp 回调
 */
+(void)requestByPost:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp;

/**
 delete请求
 
 @param URLString url
 @param parameters 参数
 @param comp 回调
 */
+(void)requestByDelete:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp;

/**
 put请求
 
 @param URLString url
 @param parameters 参数
 @param comp 回调
 */
+(void)requestByPut:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp;


/**
 patch请求
 
 @param URLString url
 @param parameters 参数
 @param comp 回调
 */
+(void)requestByPatch:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp;








@end

