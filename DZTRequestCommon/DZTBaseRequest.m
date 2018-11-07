//
//  DZTBaseRequest.m
//  DZTRequestTool
//
//  Created by YYDD on 2018/10/25.
//  Copyright © 2018年 com.yydd.dzt. All rights reserved.
//

#import "DZTBaseRequest.h"
#import <AFNetworking/AFNetworking.h>
#import "DZTHttpConfig.h"
#import "NSError+DZTExt.h"
#import "DZTRequestLog.h"

@implementation DZTBaseRequest

+ (void)PatchMethodWithSessionManager:(AFHTTPSessionManager *)sessionManager URLString:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp {
    
    [sessionManager PATCH:URLString parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        [[DZTBaseRequest sharedRequest]logWithSessionTask:task response:responseObject error:nil];
        [[DZTBaseRequest sharedRequest]checkSpecialStateWhenSuccessWithObj:responseObject WithTask:task];
        
        if (comp) {
            comp([DZTHttpResponseObject createDataWithResp:responseObject]);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [[DZTBaseRequest sharedRequest]updateError:error task:task];
        [[DZTBaseRequest sharedRequest]logWithSessionTask:task response:nil error:error];
        [[DZTBaseRequest sharedRequest]checkSpecialStateWhenFailureWithError:error WithTask:task];
        if (comp) {
            comp([DZTHttpResponseObject createErrorDataWithError:error]);
        }
        
    }];
}

+ (void)PutMethodWithSessionManager:(AFHTTPSessionManager *)sessionManager URLString:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp {
    [sessionManager PUT:URLString parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        [[DZTBaseRequest sharedRequest]logWithSessionTask:task response:responseObject error:nil];
        [[DZTBaseRequest sharedRequest]checkSpecialStateWhenSuccessWithObj:responseObject WithTask:task];
        if (comp) {
            comp([DZTHttpResponseObject createDataWithResp:responseObject]);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [[DZTBaseRequest sharedRequest]updateError:error task:task];
        [[DZTBaseRequest sharedRequest]logWithSessionTask:task response:nil error:error];
        [[DZTBaseRequest sharedRequest]checkSpecialStateWhenFailureWithError:error WithTask:task];
        if (comp) {
            comp([DZTHttpResponseObject createErrorDataWithError:error]);
        }
        
    }];
}

+ (void)DeleteMethodWithSessionManager:(AFHTTPSessionManager *)sessionManager URLString:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp {
    [sessionManager DELETE:URLString parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        [[DZTBaseRequest sharedRequest]logWithSessionTask:task response:responseObject error:nil];
        [[DZTBaseRequest sharedRequest]checkSpecialStateWhenSuccessWithObj:responseObject WithTask:task];
        if (comp) {
            comp([DZTHttpResponseObject createDataWithResp:responseObject]);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        [[DZTBaseRequest sharedRequest]updateError:error task:task];
        [[DZTBaseRequest sharedRequest]logWithSessionTask:task response:nil error:error];
        [[DZTBaseRequest sharedRequest]checkSpecialStateWhenFailureWithError:error WithTask:task];
        if (comp) {
            comp([DZTHttpResponseObject createErrorDataWithError:error]);
        }
        
    }];
}

+ (void)PostMethodWithSessionManager:(AFHTTPSessionManager *)sessionManager URLString:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp {
    [sessionManager POST:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        [[DZTBaseRequest sharedRequest]logWithSessionTask:task response:responseObject error:nil];
        [[DZTBaseRequest sharedRequest]checkSpecialStateWhenSuccessWithObj:responseObject WithTask:task];
        
        if (comp) {
            comp([DZTHttpResponseObject createDataWithResp:responseObject]);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [[DZTBaseRequest sharedRequest]updateError:error task:task];
        [[DZTBaseRequest sharedRequest]logWithSessionTask:task response:nil error:error];
        [[DZTBaseRequest sharedRequest]checkSpecialStateWhenFailureWithError:error WithTask:task];
        if (comp) {
            comp([DZTHttpResponseObject createErrorDataWithError:error]);
        }
        
    }];
}

+ (void)GETMethodWithSessionManager:(AFHTTPSessionManager *)sessionManager URLString:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp {
    
    [sessionManager GET:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [[DZTBaseRequest sharedRequest]logWithSessionTask:task response:responseObject error:nil];
        [[DZTBaseRequest sharedRequest]checkSpecialStateWhenSuccessWithObj:responseObject WithTask:task];

        if (comp) {
    
            comp([DZTHttpResponseObject createDataWithResp:responseObject]);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [[DZTBaseRequest sharedRequest]updateError:error task:task];
        [[DZTBaseRequest sharedRequest]logWithSessionTask:task response:nil error:error];
        [[DZTBaseRequest sharedRequest]checkSpecialStateWhenFailureWithError:error WithTask:task];
        
        if (comp) {
            comp([DZTHttpResponseObject createErrorDataWithError:error]);
        }
    }];
}


- (void)updateError:(NSError *)error task:(NSURLSessionDataTask *)task {

    [DZTRequestLog updateError:error task:task];
}

- (void)logWithSessionTask:(NSURLSessionTask *)sessionTask response:(id)response error:(NSError *)error {
    
    [DZTRequestLog logWithSessionTask:sessionTask response:response error:error];
}

- (void)checkSpecialStateWhenSuccessWithObj:(id)responseObj WithTask:(NSURLSessionDataTask *)task {

    [DZTRequestLog checkSpecialStateWhenSuccessWithObj:responseObj WithTask:task];
}


- (void)checkSpecialStateWhenFailureWithError:(NSError *)error WithTask:(NSURLSessionDataTask *)task{

    [DZTRequestLog checkSpecialStateWhenFailureWithError:error WithTask:task];
}


+ (DZTBaseRequest *)sharedRequest {
    static DZTBaseRequest *dztHttpRequest = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dztHttpRequest = [[DZTBaseRequest alloc]init];
    });
    return dztHttpRequest;
}



@end
