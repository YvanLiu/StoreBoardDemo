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
@property (strong, nonatomic) NSMutableArray *contents;

@end

@implementation HomeViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource = @[@"Home_demo_01",@"Home_demo_02",@"Home_demo_03"];
    self.contents = [NSMutableArray array];
    [self.contents addObject:@"前卫设计动感十足 体验“中国芯”动力新哈弗H6 Coupe\n新哈弗H6 Coupe是长城公司采用全新设计语言开发的一款具有酷颜值，酷动力，酷装备的SUV。此次新哈弗H6 Coupe由内而外的全面升级，必将引来大众的追捧，开创哈弗SUV新篇章...\n1.5GDIT发动机应用CVVL、缸内直喷等前沿技术，动力响应快、燃油经济性好，最大功率124kW，1400转爆发最大扭矩285N·m，百公里加速9.7s，百公里油耗仅6.8L，荣获“中国心”2017十佳发动机；\n7DCT湿式双离合变速器采用最先进的摩擦材料，速比范围高达8.0，换挡平顺、可靠性高，提升燃油经济性,荣获2018届世界十佳变速器。\n整车采用超刚性一体式安全结构车身；\n配备奥托立夫6安全气囊、帘式气囊贯穿前后，保护面积更宽泛；\n盲点侦测，保证行车安全；\n配备360环视影像系统、LED组合前灯，驾乘更安全。\n外观采用钻石形体光学设计，车身线条硬朗连贯，更动感；\n内饰采用大面贯穿式整体设计，断面式仪表板极具立体感，打造科技及尊享兼备的体验。"];
    [self.contents addObject:@"一兆韦德健身管理有限公司目前有员工3000多人，拥有超过一百家健身会所。公司大力倡导绿色环保和时尚健身运动。凭借先进的管理理念、丰富的行业经验、完善的管理体系和管理团队，业已成为业内发展速度快、分店数量多、会员数量众多的健身连锁机构。公司多次通过权威机构认证，目前由国际著名投资公司——新加坡淡马锡集团注资，2015年更是获得了上海市著名商标，是健身行业内首个获得该荣誉的企业。公司希望通过全体员工的努力为社会提供有价值的健康生活服务，成为具世界竞争力的连锁健身企业之一。公司将打造更多的绿色生态会馆、为美好的城市生活贡献更多力量。"];
    [self.contents addObject:@"黑天鹅 \n隶属于北京黑天鹅餐饮管理有限公司，公司主要打造国内品质卓越，美味安心的蛋糕。黑天鹅蛋糕源于黄金比例的配方，精选世界各地优质食材，让您和朋友轻松享受精品蛋糕。\n用新锐的艺术理念和国际化的视野，带领团队重塑品牌，开启了黑天鹅与全球顶尖的甜品大师、设计大师和顶级原料商全面合作的阶段，让黑天鹅的产品和形象获得蜕变和飞跃，迅速跻身于国际一流烘焙品牌的行列。\n黑天鹅蛋糕推出以来，一直以一种“昂贵、奢华、精美”的形象示人，北京的首家实体店铺，自然要延续这个风格。先站在门口拍一张，这种风格的铺面，在蛋糕店里绝对令人耳目一新。"];
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
        detail.content = self.contents[indexPath.row];
    }
}


@end
