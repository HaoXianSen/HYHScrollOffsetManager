//
//  YHTableViewManager.h
//  YHNavigation
//
//  Created by harry on 2018/7/10.
//  Copyright © 2018年 Harray. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "YHDistanceRange.h"

typedef NS_ENUM(NSUInteger, YHScrollOffsetAnimationType) {
    YHScrollOffsetAnimationTypeNavigationBarAlpha,// 改变navigationBar 的透明度
    YHScrollOffsetAnimationTypeCustom, // 自定义
};

typedef void(^YHCustomAnimationBlock)(CGPoint offset, YHAnimateDistanceRange range);

@interface YHScrollViewManager : NSObject

/**管理者srcollView**/
@property (nonatomic, weak) UIScrollView *scrollView;
@property (nonatomic, weak) UINavigationController *currentNav;
@property (nonatomic, assign) YHAnimateDistanceRange animateRange;

@property (nonatomic, assign) YHScrollOffsetAnimationType animationType;
@property (nonatomic, copy) YHCustomAnimationBlock customAnimationBlock;
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
+ (instancetype)scrollViewManager:(UIScrollView *)srcollView;

- (void)setNavigationBarHidden:(BOOL)isHidden animated:(BOOL)animated;

@end
