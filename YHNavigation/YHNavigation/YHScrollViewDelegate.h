//
//  YHScrollViewDelegate.h
//  YHNavigation
//
//  Created by harry on 2018/7/10.
//  Copyright © 2018年 Harray. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "YHDistanceRange.h"

@protocol YHScrollViewDelegateProtocol<NSObject>
@optional
- (void)scrollViewDidScrolled:(UIScrollView *)scrollView;
@end

@interface YHScrollViewDelegate : NSObject<UIScrollViewDelegate>
/**开始动画和动画距离结构体**/
@property (nonatomic, assign)YHAnimateDistanceRange  range;
@property (nonatomic, weak) UINavigationController *nav;
@property (nonatomic, weak) id<YHScrollViewDelegateProtocol> delegate;

- (instancetype)initWithRange:(YHAnimateDistanceRange)range;
+ (instancetype)scrollViewDelegate:(YHAnimateDistanceRange)range;

@end
