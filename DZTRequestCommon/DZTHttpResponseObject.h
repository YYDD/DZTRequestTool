//
//  DZTHttpResponseObject.h
//  DZTRequestTool
//
//  Created by YYDD on 2018/10/25.
//  Copyright © 2018年 com.yydd.dzt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DZTHttpResponseObject : NSObject


/**
 操作码
 */
@property (nonatomic, assign) NSInteger code;

/**
 错误信息
 */
@property (nonatomic, copy) NSString *msg;

/**
 返回具体结果
 */
@property (nonatomic, strong) id body;

/**
 请求是否成功
 */
@property (nonatomic, assign) BOOL success;

@property (nonatomic, assign) long long timestamp;

@property (nonatomic, strong) id originalData;


+ (DZTHttpResponseObject *)createDataWithResp:(id)resp;

+ (DZTHttpResponseObject *)createErrorDataWithError:(NSError *)error;


@end

typedef void(^DZTHttpRespComp)(DZTHttpResponseObject *respObj);
