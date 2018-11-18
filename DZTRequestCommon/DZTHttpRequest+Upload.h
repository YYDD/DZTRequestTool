//
//  DZTHttpRequest+Upload.h
//  DZTRequestTool
//
//  Created by YYDD on 2018/10/25.
//  Copyright © 2018年 com.yydd.dzt. All rights reserved.
//

#import "DZTHttpRequest.h"


@interface DZTHttpRequest (Upload)

+ (void)requestByPostForUpload:(NSString *)URLString parameters:(NSDictionary *)parameters fileData:(NSData *)fileData completion:(DZTHttpRespComp)comp;


@end

