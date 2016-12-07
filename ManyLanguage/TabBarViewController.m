//
//  TabBarViewController.m
//  ManyLanguage
//
//  Created by 风外杏林香 on 2016/12/5.
//  Copyright © 2016年 风外杏林香. All rights reserved.
//

#import "TabBarViewController.h"
#import "ViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 创建一堆Controller
    ViewController *vc1 = [[ViewController alloc] init];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:vc1];
//    nav1.tabBarItem.title = NSLocalizedString(@"vc1Title", nil);
    vc1.title = NSLocalizedString(@"vc1Title", nil);
    
    ViewController1 *vc2 = [[ViewController1 alloc] init];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:vc2];
//    nav2.tabBarItem.title = NSLocalizedString(@"vc2Title", nil);
    vc2.title = NSLocalizedString(@"vc2Title", nil);
    
    ViewController2 *vc3 = [[ViewController2 alloc] init];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:vc3];
//    nav3.tabBarItem.title = NSLocalizedString(@"vc3Title", nil);
    vc3.title = NSLocalizedString(@"vc3Title", nil);
    self.viewControllers = @[vc1, vc2, vc3];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
