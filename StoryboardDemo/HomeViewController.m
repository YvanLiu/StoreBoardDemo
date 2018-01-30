//
//  HomeViewController.m
//  StoryboardDemo
//
//  Created by sjimac01 on 2018/1/30.
//  Copyright © 2018年 sjimac01. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeCell.h"
#import "HomeDetailViewController.h"
@interface HomeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) NSArray *dataSource;
@end

@implementation HomeViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource = @[@"Home_demo_01",@"Home_demo_02",@"Home_demo_03"];
    
//    [self.tableView registerNib:[UINib nibWithNibName:@"HomeCell" bundle:nil] forCellReuseIdentifier:@"HOMECELLID"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return ((self.view.frame.size.width-40)*6)/5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HomeCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HOMECELLID" forIndexPath:indexPath];
    cell.iconImageView.image = [UIImage imageNamed:self.dataSource[indexPath.row]];
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    if ([segue.identifier isEqualToString:@"pushDetail"]) {
        HomeDetailViewController *detail = (HomeDetailViewController *)segue.destinationViewController;
        detail.imageName = self.dataSource[indexPath.row];
    }
}


@end
