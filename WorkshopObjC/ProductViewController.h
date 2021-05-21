//
//  ProductViewController.h
//  WorkshopObjC
//
//  Created by Victor Toya on 21/05/21.
//

#import <UIKit/UIKit.h>
#import "ProductCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface ProductViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
{
    UICollectionView *collectionView;
    NSMutableArray *products;
}

@end

NS_ASSUME_NONNULL_END
