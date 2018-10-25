//
//  DZTBaseRequest.h
//  DZTRequestTool
//
//  Created by YYDD on 2018/10/25.
//  Copyright © 2018年 com.yydd.dzt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DZTHttpResponseObject.h"

@class AFHTTPSessionManager;

@interface DZTBaseRequest : NSObject

+ (void)GETMethodWithSessionManager:(AFHTTPSessionManager *)sessionManager URLString:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp;

+ (void)PostMethodWithSessionManager:(AFHTTPSessionManager *)sessionManager URLString:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp;

+ (void)DeleteMethodWithSessionManager:(AFHTTPSessionManager *)sessionManager URLString:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp;

+ (void)PutMethodWithSessionManager:(AFHTTPSessionManager *)sessionManager URLString:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp;

+ (void)PatchMethodWithSessionManager:(AFHTTPSessionManager *)sessionManager URLString:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp;

@end
