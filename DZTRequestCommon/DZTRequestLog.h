//
//  DZTRequestLog.h
//  DZTRequestTool
//
//  Created by YYDD on 2018/10/25.
//  Copyright © 2018年 com.yydd.dzt. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NSURLSessionDataTask;
@interface DZTRequestLog : NSObject

+ (void)updateError:(NSError *)error task:(NSURLSessionDataTask *)task;

+ (void)logWithSessionTask:(NSURLSessionTask *)sessionTask response:(id)response error:(NSError *)error;

+ (void)checkSpecialStateWhenSuccessWithObj:(id)responseObj WithTask:(NSURLSessionDataTask *)task;

+ (void)checkSpecialStateWhenFailureWithError:(NSError *)error WithTask:(NSURLSessionDataTask *)task;

@end

