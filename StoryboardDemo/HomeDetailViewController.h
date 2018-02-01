//
//  HomeDetailViewController.h
//  StoryboardDemo
//
//  Created by sjimac01 on 2018/1/30.
//  Copyright © 2018年 sjimac01. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (strong, nonatomic) NSString *imageName;
@property (strong, nonatomic) NSString *content;
@end
