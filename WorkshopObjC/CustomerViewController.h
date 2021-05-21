//
//  CustomerViewController.h
//  WorkshopObjC
//
//  Created by Victor Toya on 21/05/21.
//

#import <UIKit/UIKit.h>
#import "CustomerCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface CustomerViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    UITableView *tableView;
    NSMutableArray *customers;
}

@end

NS_ASSUME_NONNULL_END
