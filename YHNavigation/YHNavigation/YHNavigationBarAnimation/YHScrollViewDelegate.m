//
//  YHScrollViewDelegate.m
//  YHNavigation
//
//  Created by harry on 2018/7/10.
//  Copyright © 2018年 Harray. All rights reserved.
//

#import "YHScrollViewDelegate.h"
#import "YHAnimationManager.h"
@interface YHScrollViewDelegate()

@end
@implementation YHScrollViewDelegate

- (instancetype)initWithRange:(YHAnimateDistanceRange)range {
    if (self = [super init]) {
        _range = range;
    }
    return self;
}
+ (instancetype)scrollViewDelegate:(YHAnimateDistanceRange)range {
    return [[self alloc] initWithRange:range];
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat offset = scrollView.contentOffset.y;
    NSLog(@"%@", self.nav);
    if (offset >= self.range.beiginLocation && offset <= self.range.beiginLocation+_range.distance) {
        CGFloat tovalue = 1 - (offset - _range.distance)/ _range.distance;
        NSLog(@"fromValue:%f, toValue:%f", self.nav.navigationBar.alpha, tovalue);
        [YHAnimationManager alphaAnimationWithRange:YHAnimateAlphaRangeMake(self.nav.navigationBar.alpha, tovalue) durantion:self.range.duration animView:self.nav.navigationBar];
    } else if (offset < self.range.beiginLocation) {
        [YHAnimationManager alphaAnimationWithRange:YHAnimateAlphaRangeMake(self.nav.navigationBar.alpha, 1) durantion:self.range.duration animView:self.nav.navigationBar];
    } else {
         [YHAnimationManager alphaAnimationWithRange:YHAnimateAlphaRangeMake(self.nav.navigationBar.alpha, 0) durantion:self.range.duration animView:self.nav.navigationBar];
    }
    if ([self.delegate respondsToSelector:@selector(scrollViewDidScrolled:)]) {
        [self.delegate scrollViewDidScrolled:scrollView];
    }
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    
}
@end
