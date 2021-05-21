//
//  ViewController.m
//  WorkshopObjC
//
//  Created by Victor Toya on 20/04/21.
//

#import "ViewController.h"

/*
 Workshop Notes ::
 This file is .m or implementation of class.
 In this file you can also add @interface like .h file but it can't be accessed by other class
 Implementation @implementation is where we can put all logic of the App.
 */

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
}

/*
 Workshop Notes ::
 Method viewDidAppear is added because we need to get safeAreaLayoutGuide value.
 It will never get the value (0) everytime we put this in viewDidLoad method because viewDidLoad will display sooner
 before safeAreaLayoutGuide set
 */
- (void)viewDidAppear:(BOOL)animated {
    
    /*
     Workshop Notes ::
     This is example of UIKit element implemented using Objective-C.
     */
    UIView *container = [[UIView alloc] initWithFrame:self.view.safeAreaLayoutGuide.layoutFrame];
    container.backgroundColor = [UIColor colorWithRed:204.0/225.0 green:204.0/225.0 blue:204.0/225.0 alpha:0.2];
    [self.view addSubview:container];
    
    UIImageView *image = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, container.frame.size.width-40, 50)];
    image.image = [UIImage imageNamed:@"logo.png"];
    image.contentMode = UIViewContentModeScaleAspectFit;
    [container addSubview:image];
    
    UIButton *open = [[UIButton alloc] initWithFrame:CGRectMake(30, CGRectGetMaxY(image.frame)+20, container.frame.size.width-60, 50)];
    open.layer.cornerRadius = 20;
    open.backgroundColor = [self.view tintColor];
    [open setTitle:@"Enter" forState:UIControlStateNormal];
    [open setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [container addSubview:open];
    
    /*
     Workshop Notes ::
     This is example of adding constraint to UIKit element implemented in Objective-C.
     */
    container.translatesAutoresizingMaskIntoConstraints = NO;
    [[container.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:0] setActive:YES];
    [[container.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor constant:0] setActive:YES];
    [[container.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor constant:0] setActive:YES];
    [[container.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor constant:0] setActive:YES];
    
    image.translatesAutoresizingMaskIntoConstraints = NO;
    [[image.topAnchor constraintEqualToAnchor:container.topAnchor constant:20] setActive:YES];
    [[image.leadingAnchor constraintEqualToAnchor:container.leadingAnchor constant:20] setActive:YES];
    [[image.trailingAnchor constraintEqualToAnchor:container.trailingAnchor constant:-20] setActive:YES];
    [[image.heightAnchor constraintEqualToConstant:50] setActive:YES];
    
    open.translatesAutoresizingMaskIntoConstraints = NO;
    [[open.topAnchor constraintEqualToAnchor:image.bottomAnchor constant:20] setActive:YES];
    [[open.leadingAnchor constraintEqualToAnchor:container.leadingAnchor constant:30] setActive:YES];
    [[open.trailingAnchor constraintEqualToAnchor:container.trailingAnchor constant:-30] setActive:YES];
    [[open.heightAnchor constraintEqualToConstant:50] setActive:YES];
    
    /*
     Workshop Notes ::
     This is example of adding action to button whenever it tapped.
     */
    [open addTarget:self action:@selector(onEnterWorkshop:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)onEnterWorkshop:(UIButton *)sender
{
    DetailViewController *detailViewController = [[DetailViewController alloc] init];
    detailViewController.title = DETAIL_TITLE;
    detailViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    
    [self.navigationController pushViewController:detailViewController animated:YES];
}

/*
 Workshop Notes ::
 This is example instance method which we need to initialized the class before use this methods.
 */
- (NSString *)getString
{
    return string;
}

- (void)setString:(NSString *)value
{
    string = value;
}

- (NSArray *)getArray
{
    return array;
}

- (void)setArray:(NSArray *)value
{
    array = value;
}

- (NSDictionary *)getJSON
{
    return json;
}

- (void)setJSON:(NSDictionary *)value
{
    json = value;
}

/*
 Workshop Notes ::
 This is example class method which we can directly use or call the method without initialized the class.
 */
+ (NSString *)getValueString
{
    return @"Hello World";
}

+ (NSArray *)getValueArray
{
    NSArray *result = [[NSArray alloc] initWithObjects:@"1", @"2", @"3", nil];
    return result;
}

@end
