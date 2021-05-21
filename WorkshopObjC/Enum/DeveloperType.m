//
//  DeveloperType.m
//  WorkshopObjC
//
//  Created by Victor Toya on 20/04/21.
//

#import "DeveloperType.h"

@implementation DeveloperType

- (instancetype)initWithEnum:(DeveloperTypeEnum)value
{
    self = [super init];
    if (self) {
        devtype = value;
    }
    return self;
}

- (NSString *)toString
{
    switch (devtype) {
        case DEVELOPER_TYPE_OBJC:
            return @"Objective-C Developer";
            break;
            
        case DEVELOPER_TYPE_SWIFT:
            return @"Swift Developer";
            break;
            
        default:
            return @"";
            break;
    }
}

@end
