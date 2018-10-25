//
//  DZTRequestLog.m
//  DZTRequestTool
//
//  Created by YYDD on 2018/10/25.
//  Copyright © 2018年 com.yydd.dzt. All rights reserved.
//

#import "DZTRequestLog.h"
#import "NSError+DZTExt.h"

@implementation DZTRequestLog

+ (void)updateError:(NSError *)error task:(NSURLSessionDataTask *)task {
    
    NSHTTPURLResponse *response = (NSHTTPURLResponse *)task.response;
    NSInteger statusCode = response.statusCode;
    error.httpStatusCode = [NSNumber numberWithInteger:statusCode];
    error.errorMessage = [NSString stringWithFormat:@"出了点小差错，一会再试试吧(%li)!",(long)statusCode];
    
}


+ (void)logWithSessionTask:(NSURLSessionTask *)sessionTask response:(id)response error:(NSError *)error {
    
}

+ (void)checkSpecialStateWhenSuccessWithObj:(id)responseObj WithTask:(NSURLSessionDataTask *)task {
    
}

+ (void)checkSpecialStateWhenFailureWithError:(NSError *)error WithTask:(NSURLSessionDataTask *)task {
    
}



@end
