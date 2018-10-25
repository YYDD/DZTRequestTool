//
//  NSError+DZTExt.h
//  DZTRequestTool
//
//  Created by YYDD on 2018/10/25.
//  Copyright © 2018年 com.yydd.dzt. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSError (DZTExt)

@property (nonatomic, copy) NSNumber *httpStatusCode;
@property (nonatomic, copy) NSString *errorMessage;


@end


