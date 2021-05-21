//
//  DetailViewController.m
//  WorkshopObjC
//
//  Created by Victor Toya on 20/04/21.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

NSString * const greeting = @"Good Morning";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidAppear:(BOOL)animated {
    
    /*
     Workshop Notes ::
     This is example of UIKit element implemented using Objective-C.
     */
    UIView *container = [[UIView alloc] initWithFrame:self.view.safeAreaLayoutGuide.layoutFrame];
    container.backgroundColor = [UIColor colorWithRed:204.0/225.0 green:204.0/225.0 blue:204.0/225.0 alpha:0.2];
    [self.view addSubview:container];
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, container.frame.size.width-20, 50)];
    title.text = greeting;
    title.font = [UIFont boldSystemFontOfSize:18];
    title.textColor = [UIColor lightGrayColor];
    title.textAlignment = NSTextAlignmentCenter;
    title.numberOfLines = 0;
    [container addSubview:title];
    
    UIButton *customerButton = [[UIButton alloc] initWithFrame:CGRectMake(30, CGRectGetMaxY(title.frame)+20, container.frame.size.width-60, 50)];
    customerButton.layer.cornerRadius = 20;
    customerButton.backgroundColor = [self.view tintColor];
    [customerButton setTitle:@"Customers Data" forState:UIControlStateNormal];
    [customerButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [container addSubview:customerButton];
    
    UIButton *productsButton = [[UIButton alloc] initWithFrame:CGRectMake(30, CGRectGetMaxY(customerButton.frame)+10, container.frame.size.width-60, 50)];
    productsButton.layer.cornerRadius = 20;
    productsButton.backgroundColor = [self.view tintColor];
    [productsButton setTitle:@"Products Data" forState:UIControlStateNormal];
    [productsButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [container addSubview:productsButton];
    
    /*
     Workshop Notes ::
     This is example of adding constraint to UIKit element implemented in Objective-C.
     */
    container.translatesAutoresizingMaskIntoConstraints = NO;
    [[container.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:0] setActive:YES];
    [[container.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:0] setActive:YES];
    [[container.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor constant:0] setActive:YES];
    [[container.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor constant:0] setActive:YES];
    
    title.translatesAutoresizingMaskIntoConstraints = NO;
    [[title.topAnchor constraintEqualToAnchor:container.topAnchor constant:10] setActive:YES];
    [[title.leadingAnchor constraintEqualToAnchor:container.leadingAnchor constant:10] setActive:YES];
    [[title.trailingAnchor constraintEqualToAnchor:container.trailingAnchor constant:-10] setActive:YES];
    [[title.heightAnchor constraintEqualToConstant:50] setActive:YES];
    
    customerButton.translatesAutoresizingMaskIntoConstraints = NO;
    [[customerButton.topAnchor constraintEqualToAnchor:title.bottomAnchor constant:20] setActive:YES];
    [[customerButton.leadingAnchor constraintEqualToAnchor:container.leadingAnchor constant:30] setActive:YES];
    [[customerButton.trailingAnchor constraintEqualToAnchor:container.trailingAnchor constant:-30] setActive:YES];
    [[customerButton.heightAnchor constraintEqualToConstant:50] setActive:YES];
    
    productsButton.translatesAutoresizingMaskIntoConstraints = NO;
    [[productsButton.topAnchor constraintEqualToAnchor:customerButton.bottomAnchor constant:10] setActive:YES];
    [[productsButton.leadingAnchor constraintEqualToAnchor:container.leadingAnchor constant:30] setActive:YES];
    [[productsButton.trailingAnchor constraintEqualToAnchor:container.trailingAnchor constant:-30] setActive:YES];
    [[productsButton.heightAnchor constraintEqualToConstant:50] setActive:YES];
    
    /*
     Workshop Notes ::
     This is example of adding action to button whenever it tapped.
     */
    [customerButton addTarget:self action:@selector(onClickCustomer:) forControlEvents:UIControlEventTouchUpInside];
    [productsButton addTarget:self action:@selector(onClickProducts:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)onClickCustomer:(UIButton *)sender
{
    CustomerViewController *customerViewController = [[CustomerViewController alloc] init];
    customerViewController.title = @"Customer Data";
    customerViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self.navigationController pushViewController:customerViewController animated:YES];
}

- (void)onClickProducts:(UIButton *)sender
{
    ProductViewController *productViewController = [[ProductViewController alloc] init];
    productViewController.title = @"Products Data";
    productViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    [self.navigationController pushViewController:productViewController animated:YES];
}

@end
