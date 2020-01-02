 //
//  MLNavigationController.m
//  ZHJX(new)
//
//  Created by 杨磊 on 2019/12/18.
//  Copyright © 2019 杨磊. All rights reserved.
//

#import "MLNavigationController.h"

@interface MLNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation MLNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.interactivePopGestureRecognizer.delegate = self;
    self.navigationBar.translucent = NO;
}

///每次运行，只执行一次
+ (void)initialize{
    UINavigationBar *bar = [UINavigationBar appearance];
    [bar setBarTintColor:[UIColor whiteColor]];
    [bar setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor blackColor]}];
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    
    if (self.viewControllers.count <= 1 ) {
        return NO;
    }
    return YES;
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    UIViewController* topVC = self.topViewController;
    return [topVC preferredStatusBarStyle];
}
@end
