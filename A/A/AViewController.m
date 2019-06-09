//
//  AViewController.m
//  A_Category
//
//  Created by Gaowz on 2019/6/6.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

#import "AViewController.h"
#import <B_Category/CTMediator+B.h>


@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    label.text = @"This is A";
    label.textColor = [UIColor redColor];
    label.font = [UIFont systemFontOfSize:30];
    [self.view addSubview:label];
    
    UIButton *buttn = [UIButton buttonWithType:UIButtonTypeCustom];
    [buttn setTitle:@"To B" forState:UIControlStateNormal];
    [buttn setFrame:CGRectMake(100, 300, 100, 100)];
    [buttn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.view addSubview:buttn];
    
    [buttn addTarget:self action:@selector(toA) forControlEvents:UIControlEventTouchUpInside];
}


- (void)toA{
    UIViewController *viewController = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"hello,world!"];
    if (!viewController) {
        NSLog(@"viewController = nil");
        return;
    }
    [self presentViewController:viewController animated:YES completion:nil];
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
