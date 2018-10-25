//
//  DZTHttpRequest+JsonMethod.h
//  DZTRequestTool
//
//  Created by YYDD on 2018/10/25.
//  Copyright © 2018年 com.yydd.dzt. All rights reserved.
//

#import "DZTHttpRequest.h"

@interface DZTHttpRequest (JsonMethod)

/**
 get请求
 
 @param URLString url
 @param parameters 参数
 @param comp 回调
 */
+(void)requestByGetForJson:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp;


/**
 post请求
 
 @param URLString url
 @param parameters 参数
 @param comp 回调
 */
+(void)requestByPostForJson:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp;

/**
 delete请求
 
 @param URLString url
 @param parameters 参数
 @param comp 回调
 */
+(void)requestByDeleteForJson:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp;

/**
 put请求
 
 @param URLString url
 @param parameters 参数
 @param comp 回调
 */
+(void)requestByPutForJson:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp;


/**
 patch请求
 
 @param urlStr url
 @param parameters 参数
 @param comp 回调
 */
+(void)requestByPatchForJson:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp;





@end

