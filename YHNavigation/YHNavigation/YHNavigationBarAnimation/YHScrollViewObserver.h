//
//  YHScrollViewDelegate.h
//  YHNavigation
//
//  Created by harry on 2018/7/10.
//  Copyright © 2018年 Harray. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^YHScrollViewObserverCallBack)(CGPoint contentOffset);

@interface YHScrollViewObserver : NSObject

@property (nonatomic, copy) YHScrollViewObserverCallBack offsetObserveCallBack;

- (instancetype)initWithObservedScrollView:(UIScrollView *)scrollView;

+ (instancetype)scrollViewObserverWithObervedScrollView:(UIScrollView *)scrollView;

@end
