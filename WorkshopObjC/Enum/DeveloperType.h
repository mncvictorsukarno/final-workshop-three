//
//  DeveloperType.h
//  WorkshopObjC
//
//  Created by Victor Toya on 20/04/21.
//

#import <Foundation/Foundation.h>

typedef enum {
    DEVELOPER_TYPE_NULL,
    DEVELOPER_TYPE_OBJC,
    DEVELOPER_TYPE_SWIFT
} DeveloperTypeEnum;

NS_ASSUME_NONNULL_BEGIN

@interface DeveloperType : NSObject
{
    DeveloperTypeEnum devtype;
}

- (instancetype)initWithEnum:(DeveloperTypeEnum)value;

- (NSString *)toString;

@end

NS_ASSUME_NONNULL_END
