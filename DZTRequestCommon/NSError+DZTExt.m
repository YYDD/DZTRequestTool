//
//  NSError+DZTExt.m
//  DZTRequestTool
//
//  Created by YYDD on 2018/10/25.
//  Copyright © 2018年 com.yydd.dzt. All rights reserved.
//

#import "NSError+DZTExt.h"
#import <objc/runtime.h>

static char httpStatusCodeKey;
static char errorMessageKey;

@implementation NSError (DZTExt)

- (void)setHttpStatusCode:(NSNumber *)httpStatusCode {

    objc_setAssociatedObject(self, &httpStatusCodeKey, httpStatusCode, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSNumber *)httpStatusCode {
   return objc_getAssociatedObject(self, &httpStatusCodeKey);
}

- (void)setErrorMessage:(NSString *)errorMessage {
    objc_setAssociatedObject(self, &errorMessageKey, errorMessage, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)errorMessage {
    return objc_getAssociatedObject(self, &errorMessageKey);
}

@end
