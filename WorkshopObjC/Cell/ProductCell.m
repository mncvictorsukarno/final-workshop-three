//
//  ProductCell.m
//  WorkshopObjC
//
//  Created by Victor Toya on 21/05/21.
//

#import "ProductCell.h"

@implementation ProductCell
@synthesize name;
@synthesize price;

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor lightGrayColor];
        
        name = [[UILabel alloc] init];
        name.numberOfLines = 0;
        name.textAlignment = NSTextAlignmentCenter;
        name.font = [UIFont boldSystemFontOfSize:15];
        [self addSubview:name];
        
        name.translatesAutoresizingMaskIntoConstraints = NO;
        [[name.topAnchor constraintEqualToAnchor:self.topAnchor constant:10] setActive:YES];
        [[name.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:5] setActive:YES];
        [[name.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-5] setActive:YES];
        [[name.heightAnchor constraintEqualToConstant:20] setActive:YES];
        
        price = [[UILabel alloc] init];
        price.textAlignment = NSTextAlignmentCenter;
        price.font = [UIFont systemFontOfSize:15];
        [self addSubview:price];
        
        price.translatesAutoresizingMaskIntoConstraints = NO;
        [[price.topAnchor constraintEqualToAnchor:name.bottomAnchor constant:5] setActive:YES];
        [[price.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:5] setActive:YES];
        [[price.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-5] setActive:YES];
        [[price.heightAnchor constraintEqualToConstant:20] setActive:YES];
        
    }
    return self;
}

@end
