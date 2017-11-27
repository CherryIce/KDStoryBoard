//
//  Function1ViewController.m
//  KDStoryBoard
//
//  Created by Macx on 2017/11/27.
//  Copyright © 2017年 Macx. All rights reserved.
//

#import "Function1ViewController.h"

@interface Function1ViewController ()

@end

@implementation Function1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushLogin:(UIButton *)sender
{
    UIViewController * sb = [[UIStoryboard storyboardWithName:@"LoginStoryboard" bundle:nil] instantiateViewControllerWithIdentifier:@"Login"];
    [self.navigationController showViewController:sb sender:self];
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
