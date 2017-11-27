//
//  MainTabBarController.m
//  KDStoryBoard
//
//  Created by Macx on 2017/11/27.
//  Copyright © 2017年 Macx. All rights reserved.
//

#import "MainTabBarController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadUI];
}

- (void) loadUI
{
    UIStoryboard * sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UINavigationController * vc1 = [sb instantiateViewControllerWithIdentifier:@"Function1ViewController"];

    UINavigationController * vc2 = [sb instantiateViewControllerWithIdentifier:@"Function2ViewController"];

    UINavigationController * vc3 = [sb instantiateViewControllerWithIdentifier:@"Function3ViewController"];

    self.viewControllers = @[vc1,vc2,vc3];
    
    for (UIViewController * vc in self.viewControllers) {
        [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} forState:UIControlStateSelected];
    }
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
