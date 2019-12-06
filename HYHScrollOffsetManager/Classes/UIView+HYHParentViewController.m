//
//  UIView+YHParentViewController.m
//  YHNavigation
//
//  Created by harry on 2018/7/10.
//  Copyright © 2018年 Harray. All rights reserved.
//

#import "UIView+HYHParentViewController.h"

@implementation UIView (HYHParentViewController)
- (nullable UIViewController *)parentViewController {
    UIView *excuteView = self;
   return [excuteView prarentViewController:nil];
}
- (nullable UIViewController *)prarentViewController:(UIViewController *)parentViewController {
    UIViewController *parentVC = parentViewController;
    if ([self.nextResponder isKindOfClass:[UIViewController class]]) {
        parentVC =  (UIViewController *)self.nextResponder;
    } else {
        parentVC = [self.superview prarentViewController:parentVC];
    }
    return parentVC;
}
- (UINavigationController *)navigationControl {
    return [[self parentViewController] navigationController];
}
@end
