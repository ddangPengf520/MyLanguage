//
//  ViewController.m
//  ManyLanguage
//
//  Created by 风外杏林香 on 16/12/3.
//  Copyright © 2016年 风外杏林香. All rights reserved.
//

#import "ViewController.h"
#import "NSBundle+Language.h"
#import "TabBarViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *chinaBtn;
@property (weak, nonatomic) IBOutlet UIButton *engBtn;
@property (weak, nonatomic) IBOutlet UIButton *gaoBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSString *titleStr = NSLocalizedString(@"showTxt", nil);
    
    self.titleLabel.text = titleStr;
    
    [self.chinaBtn setTitle:NSLocalizedString(@"btn1", nil) forState:(UIControlStateNormal)];
    [self.engBtn setTitle:NSLocalizedString(@"btn2", nil) forState:(UIControlStateNormal)];
    [self.gaoBtn setTitle:NSLocalizedString(@"btn3", nil) forState:(UIControlStateNormal)];
    
}

- (IBAction)chinaActoion:(id)sender {
    [self changeLanguage:@"zh-Hans"];
}

- (IBAction)englishAction:(id)sender {
    [self changeLanguage:@"en"];
}

- (IBAction)gaoMianAction:(id)sender {
    [self changeLanguage:@"kh"];
    
    //Kampuchea (Cambodia )柬埔寨KH

}

- (void)changeLanguage:(NSString *)language
{
    [NSBundle setLanguage:language];
    // 然后将设置好的语言存储好，下次进来直接加载
    [[NSUserDefaults standardUserDefaults] setObject:language forKey:@"myLanguage"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    // 我们要把系统windown的rootViewController替换掉
    TabBarViewController *tab = [[TabBarViewController alloc] init];
    [UIApplication sharedApplication].keyWindow.rootViewController = tab;
    // 跳转到设置页
//    tab.selectedIndex = 2;

    
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
