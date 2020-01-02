//
//  UIViewController+MLViewController.m
//  ZHJX(new)
//
//  Created by 杨磊 on 2019/12/19.
//  Copyright © 2019 杨磊. All rights reserved.
//

#import "UIViewController+MLViewController.h"
#import "MLCustomdefine.h"

@implementation UIViewController (MLViewController)

- (void)configureTabbarItem{
//    调整间距
//    [self.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -5)];
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = MLColorRGB(127,127,127);
    
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = MLColor(@"#2692ff");
//    selectTextAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:16];
    [self.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [self.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];

}
@end
