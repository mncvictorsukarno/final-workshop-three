//
//  CustomerViewController.m
//  WorkshopObjC
//
//  Created by Victor Toya on 21/05/21.
//

#import "CustomerViewController.h"

@interface CustomerViewController ()

@end

@implementation CustomerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidAppear:(BOOL)animated
{
    tableView = [[UITableView alloc] init];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
    tableView.rowHeight = 30;
    [self.view addSubview:tableView];
    
    [tableView registerClass:CustomerCell.self forCellReuseIdentifier:@"CustomerCell"];
    
    tableView.translatesAutoresizingMaskIntoConstraints = NO;
    [[tableView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:0] setActive:YES];
    [[tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:0] setActive:YES];
    [[tableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:0] setActive:YES];
    [[tableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:0] setActive:YES];
    
    [self getCustomersData];
}

- (void)getCustomersData
{
    NSMutableDictionary *customerOne = [[NSMutableDictionary alloc] init];
    [customerOne setValue:@"John" forKey:@"name"];
    [customerOne setValue:@"Chicago" forKey:@"address"];
    
    NSMutableDictionary *customerTwo = [[NSMutableDictionary alloc] init];
    [customerTwo setValue:@"Elton" forKey:@"name"];
    [customerTwo setValue:@"London" forKey:@"address"];
    
    NSMutableDictionary *customerThree = [[NSMutableDictionary alloc] init];
    [customerThree setValue:@"Freddie" forKey:@"name"];
    [customerThree setValue:@"Melbourne" forKey:@"address"];
    
    customers = [[NSMutableArray alloc] init];
    [customers addObject:customerOne];
    [customers addObject:customerTwo];
    [customers addObject:customerThree];
    
    [tableView reloadData];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    NSDictionary *data = [customers objectAtIndex:indexPath.row];
    NSLog(@"data %@", [data valueForKey:@"name"]);
    
    CustomerCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomerCell"];
    cell.name.text = [data valueForKey:@"name"];
    cell.address.text = [data valueForKey:@"address"];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [customers count];
}

@end
