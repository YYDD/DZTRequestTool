//
//  DZTHttpRequest+Private.h
//  DZTRequestTool
//
//  Created by YYDD on 2018/10/25.
//  Copyright © 2018年 com.yydd.dzt. All rights reserved.
//

#import "DZTHttpRequest.h"

@class AFHTTPSessionManager;

@interface DZTHttpRequest ()

+ (DZTHttpRequest *)sharedRequest;

@property (nonatomic, strong, readonly) AFHTTPSessionManager *httpManager;
@property (nonatomic, strong, readonly) AFHTTPSessionManager *jsonManager;
@property (nonatomic, strong, readonly) AFHTTPSessionManager *fileManager;

@end
