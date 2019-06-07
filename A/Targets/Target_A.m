//
//  Target_A.m
//  A
//
//  Created by Gaowz on 2019/6/6.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

#import "Target_A.h"
#import "AViewController.h"

@implementation Target_A

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    NSLog(@"Action_viewController!!");
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}

@end
