//
//  ProductViewController.m
//  WorkshopObjC
//
//  Created by Victor Toya on 21/05/21.
//

#import "ProductViewController.h"

@interface ProductViewController ()

@end

@implementation ProductViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidAppear:(BOOL)animated
{
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.itemSize = CGSizeMake(100, 100);
    
    collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) collectionViewLayout:flowLayout];
    collectionView.backgroundColor = [UIColor whiteColor];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    [self.view addSubview:collectionView];
    
    [collectionView registerClass:ProductCell.self forCellWithReuseIdentifier:@"ProductCell"];
    
    collectionView.translatesAutoresizingMaskIntoConstraints = NO;
    [[collectionView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:0] setActive:YES];
    [[collectionView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:0] setActive:YES];
    [[collectionView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:0] setActive:YES];
    [[collectionView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:0] setActive:YES];
    
    [self getProductsData];
}

- (void)getProductsData
{
    NSMutableDictionary *itemOne = [[NSMutableDictionary alloc] init];
    [itemOne setValue:@"Water" forKey:@"name"];
    [itemOne setValue:@"$1" forKey:@"price"];
    
    NSMutableDictionary *itemTwo = [[NSMutableDictionary alloc] init];
    [itemTwo setValue:@"Cola" forKey:@"name"];
    [itemTwo setValue:@"$1.5" forKey:@"price"];
    
    NSMutableDictionary *itemThree = [[NSMutableDictionary alloc] init];
    [itemThree setValue:@"Fanta" forKey:@"name"];
    [itemThree setValue:@"$1.5" forKey:@"price"];
    
    products = [[NSMutableArray alloc] init];
    [products addObject:itemOne];
    [products addObject:itemTwo];
    [products addObject:itemThree];
    
    [collectionView reloadData];
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    NSDictionary *product = [products objectAtIndex:indexPath.row];
    NSLog(@"product %@", [product valueForKey:@"name"]);
    
    ProductCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ProductCell" forIndexPath:indexPath];
    cell.name.text = [product valueForKey:@"name"];
    cell.price.text = [product valueForKey:@"price"];
    
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [products count];
}

@end
