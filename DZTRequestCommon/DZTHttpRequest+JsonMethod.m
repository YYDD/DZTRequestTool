//
//  DZTHttpRequest+JsonMethod.m
//  DZTRequestTool
//
//  Created by YYDD on 2018/10/25.
//  Copyright © 2018年 com.yydd.dzt. All rights reserved.
//

#import "DZTHttpRequest+JsonMethod.h"
#import "DZTBaseRequest.h"
#import "DZTHttpRequest+Private.h"

@implementation DZTHttpRequest (JsonMethod)

+(void)requestByGetForJson:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp {
    
    [DZTBaseRequest GETMethodWithSessionManager:[DZTHttpRequest sharedRequest].jsonManager URLString:URLString parameters:parameters completion:comp];
}

+(void)requestByPostForJson:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp {
    
    [DZTBaseRequest PostMethodWithSessionManager:[DZTHttpRequest sharedRequest].jsonManager URLString:URLString parameters:parameters completion:comp];

}

+(void)requestByDeleteForJson:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp {
    
    [DZTBaseRequest DeleteMethodWithSessionManager:[DZTHttpRequest sharedRequest].jsonManager URLString:URLString parameters:parameters completion:comp];

}

+(void)requestByPutForJson:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp {
    
    [DZTBaseRequest PutMethodWithSessionManager:[DZTHttpRequest sharedRequest].jsonManager URLString:URLString parameters:parameters completion:comp];
}


+(void)requestByPatchForJson:(NSString *)URLString parameters:(NSDictionary *)parameters completion:(DZTHttpRespComp)comp {
    
    [DZTBaseRequest PatchMethodWithSessionManager:[DZTHttpRequest sharedRequest].jsonManager URLString:URLString parameters:parameters completion:comp];
}




@end
