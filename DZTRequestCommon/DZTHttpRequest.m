//
//  DZTHttpRequest.m
//  DZTRequestTool
//
//  Created by YYDD on 2018/10/25.
//  Copyright © 2018年 com.yydd.dzt. All rights reserved.
//

#import "DZTHttpRequest.h"
#import <AFNetworking/AFNetworking.h>
#import "DZTHttpConfig.h"

#import "DZTBaseRequest.h"

@interface DZTHttpRequest()

@property (nonatomic, strong) AFHTTPSessionManager *httpManager;
@property (nonatomic, strong) AFHTTPSessionManager *fileManager;
@property (nonatomic, strong) AFHTTPSessionManager *jsonManager;


@end

@implementation DZTHttpRequest


+(void)requestByGet:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp {
    
    [DZTBaseRequest GETMethodWithSessionManager:[DZTHttpRequest sharedRequest].httpManager URLString:URLString parameters:parameters completion:comp];
}

+(void)requestByPost:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp {
    
    [DZTBaseRequest PostMethodWithSessionManager:[DZTHttpRequest sharedRequest].httpManager URLString:URLString parameters:parameters completion:comp];
}

+(void)requestByDelete:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp {
    
    [DZTBaseRequest DeleteMethodWithSessionManager:[DZTHttpRequest sharedRequest].httpManager URLString:URLString parameters:parameters completion:comp];
}

+(void)requestByPut:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp {
    
    [DZTBaseRequest PutMethodWithSessionManager:[DZTHttpRequest sharedRequest].httpManager URLString:URLString parameters:parameters completion:comp];
}

+(void)requestByPatch:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp {
    
    [DZTBaseRequest PatchMethodWithSessionManager:[DZTHttpRequest sharedRequest].httpManager URLString:URLString parameters:parameters completion:comp];
}


+ (DZTHttpRequest *)sharedRequest {
    static DZTHttpRequest *dztHttpRequest = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dztHttpRequest = [[DZTHttpRequest alloc]init];
    });
    return dztHttpRequest;
}



- (AFHTTPSessionManager *)httpManager {
    
    if (!_httpManager) {
        _httpManager = [AFHTTPSessionManager manager];
        
        _httpManager.requestSerializer = [AFHTTPRequestSerializer serializer];
        _httpManager.responseSerializer = [AFJSONResponseSerializer serializer];
        _httpManager.requestSerializer.timeoutInterval = self.httpConfig.timeOutInHttpManager;
        
        NSMutableSet *acceptableContentTypes = [NSMutableSet setWithSet:_httpManager.responseSerializer.acceptableContentTypes];
        [acceptableContentTypes addObject:@"text/plain"];
        [acceptableContentTypes addObject:@"text/html"];
        [acceptableContentTypes addObject:@"text/x-json"];
        [_httpManager.responseSerializer setAcceptableContentTypes:acceptableContentTypes];
        
        if (self.httpConfig.userAgentInHttpManager) {
            [_httpManager.requestSerializer setValue:self.httpConfig.userAgentInHttpManager forHTTPHeaderField:@"User-Agent"];
        }
        
        _httpManager.securityPolicy = self.httpConfig.securityPolicyInHttpManager;
    }
    
    NSDictionary *headerDict = self.httpConfig.headerDictInHttpManager;
    for (NSString *key in headerDict) {
        
        id value = headerDict[key];
        if (value) {
            [_httpManager.requestSerializer setValue:value forHTTPHeaderField:key];
        }
    }
    
    return _httpManager;
}

- (AFHTTPSessionManager *)fileManager {
    
    if (!_fileManager) {
        _fileManager = [AFHTTPSessionManager manager];
        _fileManager.requestSerializer = [AFJSONRequestSerializer serializer];
        _fileManager.responseSerializer = [AFJSONResponseSerializer serializer];
        _fileManager.requestSerializer.timeoutInterval = self.httpConfig.timeOutInFileManager;
        [_fileManager.responseSerializer setAcceptableContentTypes:[NSSet setWithObjects:@"application/json", nil]];
        
        if (self.httpConfig.userAgentInFileManager) {
            [_fileManager.requestSerializer setValue:self.httpConfig.userAgentInFileManager forHTTPHeaderField:@"User-Agent"];
        }
        _fileManager.securityPolicy = self.httpConfig.securityPolicyInFileManager;
    }
    
    NSDictionary *headerDict = self.httpConfig.headerDictInFileManager;
    for (NSString *key in headerDict) {
        
        id value = headerDict[key];
        if (value) {
            [_fileManager.requestSerializer setValue:value forHTTPHeaderField:key];
        }
    }
    return _fileManager;
}

- (AFHTTPSessionManager *)jsonManager {
    if (!_jsonManager) {
        _jsonManager = [AFHTTPSessionManager manager];
        _jsonManager.requestSerializer = [AFJSONRequestSerializer serializer];
        _jsonManager.responseSerializer = [AFJSONResponseSerializer serializer];
        _jsonManager.requestSerializer.timeoutInterval = self.httpConfig.timeOutInJsonManager;
        [_jsonManager.responseSerializer setAcceptableContentTypes:[NSSet setWithObjects:@"application/json", nil]];
        [_jsonManager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        
        if (self.httpConfig.userAgentInJsonManager) {
            [_jsonManager.requestSerializer setValue:self.httpConfig.userAgentInJsonManager forHTTPHeaderField:@"User-Agent"];
        }
        
        _jsonManager.securityPolicy = self.httpConfig.securityPolicyInJsonManager;
    }
    
    NSDictionary *headerDict = self.httpConfig.headerDictInJsonManager;
    for (NSString *key in headerDict) {
        
        id value = headerDict[key];
        if (value) {
            [_jsonManager.requestSerializer setValue:value forHTTPHeaderField:key];
        }
    }
    return _jsonManager;
}





@end
