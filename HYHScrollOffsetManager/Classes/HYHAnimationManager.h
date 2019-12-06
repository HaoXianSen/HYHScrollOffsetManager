//
//  HYHAnimationManager.h
//
//  Created by harry on 2018/7/10.
//  Copyright © 2018年 Harray. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "HYHDistanceRange.h"

@interface HYHAnimationManager : NSObject

+ (void)alphaAnimationWithRange:(YHAnimateAlphaRange)range durantion:(CGFloat)durantion animView:(UIView *)view;

@end
