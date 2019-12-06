//
//  YHTableViewManager.m
//  YHNavigation
//
//  Created by harry on 2018/7/10.
//  Copyright © 2018年 Harray. All rights reserved.
//

#import "YHScrollViewManager.h"
#import "YHScrollViewObserver.h"
#import "UIView+YHParentViewController.h"
#import "YHAnimationManager.h"
@interface YHScrollViewManager()

@property (nonatomic, strong) YHScrollViewObserver *scrollViewOffsetObserver;

@property (nonatomic, strong) YHAnimationManager *animationManager;
@property (nonatomic, assign) CGFloat lastAlpha;
@end

@implementation YHScrollViewManager

- (YHAnimationManager *)animationManager {
    if (!_animationManager) {
        _animationManager = [[YHAnimationManager alloc] init];
    }
    return _animationManager;
}

- (instancetype)initWithScrollView:(UIScrollView *)srcollView {
    NSParameterAssert(srcollView && [srcollView isKindOfClass:UIScrollView.class]);
    
    if (self = [super init]) {
        _lastAlpha = 1;
        _scrollView = srcollView;
        _animateRange = YHAnimateDistanceRangeMake(100, 100, 0.25);
        _currentNav = [srcollView navigationControl];
        _scrollViewOffsetObserver = [YHScrollViewObserver scrollViewObserverWithObervedScrollView:_scrollView];
        __weak typeof(self) weakSelf = self;
        _scrollViewOffsetObserver.offsetObserveCallBack = ^(CGPoint contentOffset) {
            [weakSelf scrollViewOffsetChanged:contentOffset];
        };
    }
    return self;
}

+ (instancetype)scrollViewManager:(UIScrollView *)srcollView {
    return [[self alloc] initWithScrollView:srcollView];
}

- (void)scrollViewOffsetChanged:(CGPoint)offset {
    if (self.animationType == YHScrollOffsetAnimationTypeCustom) {
        if (self.customAnimationBlock) {
            self.customAnimationBlock(offset, self.animateRange);
        }
        return;
    }
    
    CGFloat offsetY = offset.y;
    if (offsetY > self.animateRange.beiginLocation && offsetY < self.animateRange.beiginLocation + self.animateRange.distance) {
        CGFloat alpha = (offsetY - self.animateRange.beiginLocation) / self.animateRange.distance;
        [YHAnimationManager alphaAnimationWithRange:YHAnimateAlphaRangeMake(_lastAlpha, alpha) durantion:self.animateRange.duration animView:self.currentNav.navigationBar];
        _lastAlpha = alpha;
    } else if (offsetY <= self.animateRange.beiginLocation) {
        [YHAnimationManager alphaAnimationWithRange:YHAnimateAlphaRangeMake(_lastAlpha, 0) durantion:self.animateRange.duration animView:self.currentNav.navigationBar];
        _lastAlpha = 0;
    } else {
        [YHAnimationManager alphaAnimationWithRange:YHAnimateAlphaRangeMake(_lastAlpha, 1) durantion:self.animateRange.duration animView:self.currentNav.navigationBar];
        _lastAlpha = 1;
    }
}

- (void)setNavigationBarHidden:(BOOL)isHidden animated:(BOOL)animated {
    if (self.currentNav) {
        [self.currentNav setNavigationBarHidden:isHidden animated:animated];
    }
}


@end
