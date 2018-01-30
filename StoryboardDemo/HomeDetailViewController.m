//
//  HomeDetailViewController.m
//  StoryboardDemo
//
//  Created by sjimac01 on 2018/1/30.
//  Copyright © 2018年 sjimac01. All rights reserved.
//

#import "HomeDetailViewController.h"

@interface HomeDetailViewController ()

@end

@implementation HomeDetailViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)tap:(UITapGestureRecognizer *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)setImageName:(NSString *)imageName {
    _imageName = imageName;
    dispatch_async(dispatch_get_main_queue(), ^{
        self.iconImageView.image = [UIImage imageNamed:imageName];
    });
}

@end
