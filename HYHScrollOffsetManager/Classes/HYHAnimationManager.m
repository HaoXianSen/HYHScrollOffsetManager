//
//  YHAnimationManager.m
//  YHNavigation
//
//  Created by harry on 2018/7/10.
//  Copyright © 2018年 Harray. All rights reserved.
//

#import "HYHAnimationManager.h"
NSString * const alphaPath = @"opacity";
@implementation HYHAnimationManager

+ (void)alphaAnimationWithRange:(YHAnimateAlphaRange)range durantion:(CGFloat)durantion animView:(UIView *)view {
    CABasicAnimation *basicAnim = [CABasicAnimation animationWithKeyPath:alphaPath];
    basicAnim.removedOnCompletion = false;
    basicAnim.fromValue = @(range.beiginAlpha);
    basicAnim.toValue = @(range.endAlpha);
    basicAnim.fillMode = kCAFillModeForwards;
    [view.layer addAnimation:basicAnim forKey:@"YHAnimation-alpha"];
    view.alpha = range.endAlpha;
}

@end
