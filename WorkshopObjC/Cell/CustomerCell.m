//
//  CustomerCell.m
//  WorkshopObjC
//
//  Created by Victor Toya on 21/05/21.
//

#import "CustomerCell.h"

@implementation CustomerCell
@synthesize name;
@synthesize address;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        name = [[UILabel alloc] init];
        [self addSubview:name];
        
        name.translatesAutoresizingMaskIntoConstraints = NO;
        [[name.topAnchor constraintEqualToAnchor:self.topAnchor constant:5] setActive:YES];
        [[name.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant:-5] setActive:YES];
        [[name.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:5] setActive:YES];
        [[name.widthAnchor constraintEqualToConstant:200] setActive:YES];
        
        address = [[UILabel alloc] init];
        [self addSubview:address];
        
        address.translatesAutoresizingMaskIntoConstraints = NO;
        [[address.topAnchor constraintEqualToAnchor:self.topAnchor constant:5] setActive:YES];
        [[address.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant:-5] setActive:YES];
        [[address.leadingAnchor constraintEqualToAnchor:name.trailingAnchor constant:5] setActive:YES];
        [[address.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-5] setActive:YES];
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
