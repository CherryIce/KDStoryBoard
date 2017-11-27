//
//  MainNavigationController.m
//  KDStoryBoard
//
//  Created by Macx on 2017/11/27.
//  Copyright © 2017年 Macx. All rights reserved.
//

#import "MainNavigationController.h"

@interface MainNavigationController ()

@end

@implementation MainNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置标题字体颜色
    [self.navigationBar setTitleTextAttributes:
     @{NSFontAttributeName:[UIFont systemFontOfSize:18],
       NSForegroundColorAttributeName:[UIColor darkTextColor]
       }];
    
    //设置左右按钮字体颜色
    [[UIBarButtonItem appearance]  setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14],
                                                            NSForegroundColorAttributeName:[UIColor darkTextColor]
                                                            } forState:UIControlStateNormal];
    
    self.navigationBar.barTintColor = [UIColor colorWithRed:235/255.0 green:235/255.0 blue:235/255.0 alpha:1];
    
    //去掉下划线
    //[self.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    //消除阴影
    self.navigationBar.shadowImage = [UIImage new];
}

- (void)pushViewController:(UIViewController *)controller animated:(BOOL)animated
{
    if (self.viewControllers.count)
    {
        controller.hidesBottomBarWhenPushed = YES;
        [self setBackItem:controller];
    }
    [super pushViewController:controller animated:animated];
}

- (void)setBackItem:(UIViewController *)controller
{
    self.interactivePopGestureRecognizer.delegate = nil;
    UIBarButtonItem * back = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"nav_back"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(s_backTapEvent)];
    controller.navigationItem.leftBarButtonItem = back;
}

- (void)s_backTapEvent
{
    if (self.presentingViewController != nil){
        [self dismissViewControllerAnimated:NO completion:nil];
    } else{
        [self popViewControllerAnimated:YES];
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
