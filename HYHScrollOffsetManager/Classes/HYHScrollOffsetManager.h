//
//  YHTableViewManager.h
//  YHNavigation
//
//  Created by harry on 2018/7/10.
//  Copyright © 2018年 Harray. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "HYHDistanceRange.h"

typedef NS_ENUM(NSUInteger, HYHScrollOffsetAnimationType) {
    HYHScrollOffsetAnimationTypeNavigationBarAlpha,// 改变navigationBar 的透明度
    HYHScrollOffsetAnimationTypeCustom, // 自定义
};

typedef void(^HYHCustomAnimationBlock)(CGPoint offset, HYHAnimateDistanceRange range);

@interface HYHScrollOffsetManager : NSObject

@property (nonatomic, weak) UIScrollView *scrollView;
@property (nonatomic, assign) HYHAnimateDistanceRange animateRange;

@property (nonatomic, assign) HYHScrollOffsetAnimationType animationType;
@property (nonatomic, copy) HYHCustomAnimationBlock customAnimationBlock;

/**
 初始化srcollView管理者

 @param srcollView 需要管理的srcollView
 @return 实例变量
 */
- (instancetype)initWithScrollView:(UIScrollView *)srcollView;

/**
 初始化srcollView管理者

 @param srcollView 需要管理的srcollView
 @return 实例变量
 */
+ (instancetype)scrollOffsetManager:(UIScrollView *)srcollView;

@end
