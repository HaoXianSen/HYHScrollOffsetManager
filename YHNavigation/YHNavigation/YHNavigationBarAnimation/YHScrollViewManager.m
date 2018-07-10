//
//  YHTableViewManager.m
//  YHNavigation
//
//  Created by harry on 2018/7/10.
//  Copyright © 2018年 Harray. All rights reserved.
//

#import "YHScrollViewManager.h"
#import "YHScrollViewDelegate.h"
#import "UIView+YHParentViewController.h"
@interface YHScrollViewManager()

@property (nonatomic, strong) YHScrollViewDelegate *delegate;

@end

@implementation YHScrollViewManager

- (YHScrollViewDelegate *)delegate {
    if (!_delegate) {
        _delegate = [[YHScrollViewDelegate alloc] init];
    }
    return _delegate;
}
- (void)setAnimateRange:(YHAnimateDistanceRange)animateRange {
    _animateRange = animateRange;
    self.delegate.range = animateRange;
}

- (instancetype)initWithScrollView:(UIScrollView *)srcollView {
    if (self = [super init]) {
        _scrollView = srcollView;
        _scrollView.delegate = self.delegate;
        _animateRange = YHAnimateDistanceRangeMake(100, 100, 0.25);
        _currentNav = [srcollView navigationControl];
        
        _delegate.range = _animateRange;
        _delegate.nav = _currentNav;
    }
    return self;
}

+ (instancetype)scrollViewManager:(UIScrollView *)srcollView {
    return [[self alloc] initWithScrollView:srcollView];
}

- (void)setNavigationBarHidden:(BOOL)isHidden animated:(BOOL)animated {
    if (self.currentNav) {
        [self.currentNav setNavigationBarHidden:isHidden animated:animated];
    }
}
@end
