//
//  UIView+YHParentViewController.h
//  YHNavigation
//
//  Created by harry on 2018/7/10.
//  Copyright © 2018年 Harray. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YHParentViewController)
- (nullable UIViewController *)parentViewController;
- (nullable UINavigationController *)navigationControl;
@end
