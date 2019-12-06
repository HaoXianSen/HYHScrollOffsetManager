//
//  YHScrollViewDelegate.m
//  YHNavigation
//
//  Created by harry on 2018/7/10.
//  Copyright © 2018年 Harray. All rights reserved.
//

#import "YHScrollViewObserver.h"

@interface YHScrollViewObserver()

@property (nonatomic, strong) UIScrollView *observedScrollView;

@end

@implementation YHScrollViewObserver

- (instancetype)initWithObservedScrollView:(UIScrollView *)scrollView {
    NSParameterAssert(scrollView && [scrollView isKindOfClass:UIScrollView.class]);
    if (self = [super init]) {
        _observedScrollView = scrollView;
        [_observedScrollView addObserver:self forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionNew context:nil];
    }
    return self;
}

+ (instancetype)scrollViewObserverWithObervedScrollView:(UIScrollView *)scrollView {
    return [[self alloc] initWithObservedScrollView:scrollView];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    CGPoint offset = [[change valueForKey:NSKeyValueChangeNewKey] CGPointValue];
    if (self.offsetObserveCallBack) {
        self.offsetObserveCallBack(offset);
    }
}

- (void)dealloc {
    [self.observedScrollView removeObserver:self forKeyPath:@"contentOffset"];
}

@end
