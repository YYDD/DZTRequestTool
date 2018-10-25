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
 0是成功  非0都是错误
 */
@property (nonatomic, assign) NSInteger code;

/**
 错误信息
 */
@property (nonatomic, copy) NSString *errorMsg;

/**
 返回具体结果
 */
@property (nonatomic, strong) id result;

/**
 请求是否成功
 */
@property (nonatomic, assign) BOOL success;


@property (nonatomic, strong) id originalData;


- (DZTHttpResponseObject *)initDataWithResp:(id)resp;

- (DZTHttpResponseObject *)initErrorDataWithError:(NSError *)error;


@end

typedef void(^DZTHttpRespComp)(DZTHttpResponseObject *respObj);
