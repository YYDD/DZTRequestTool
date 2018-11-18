//
//  DZTHttpRequest+Upload.m
//  DZTRequestTool
//
//  Created by YYDD on 2018/10/25.
//  Copyright © 2018年 com.yydd.dzt. All rights reserved.
//

#import "DZTHttpRequest+Upload.h"
#import "DZTBaseRequest.h"
#import "DZTHttpRequest+Private.h"

@implementation DZTHttpRequest (Upload)


+ (void)requestByPostForUpload:(NSString *)URLString parameters:(NSDictionary *)parameters fileData:(NSData *)fileData completion:(DZTHttpRespComp)comp {
    
    [DZTBaseRequest PostMethodForUploadWithSessionManager:[DZTHttpRequest sharedRequest].httpManager URLString:URLString parameters:parameters WithFileData:fileData completion:comp];
}


@end
