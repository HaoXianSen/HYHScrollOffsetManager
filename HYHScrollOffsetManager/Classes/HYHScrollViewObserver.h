//
//  YHScrollViewDelegate.h
//  YHNavigation
//
//  Created by harry on 2018/7/10.
//  Copyright © 2018年 Harray. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^HYHScrollViewObserverCallBack)(CGPoint contentOffset);

@interface HYHScrollViewObserver : NSObject

@property (nonatomic, copy) HYHScrollViewObserverCallBack offsetObserveCallBack;

- (instancetype)initWithObservedScrollView:(UIScrollView *)scrollView;

+ (instancetype)scrollViewObserverWithObervedScrollView:(UIScrollView *)scrollView;

@end
