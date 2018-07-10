//
//  YHDistanceRange.h
//  YHNavigation
//
//  Created by harry on 2018/7/10.
//  Copyright © 2018年 Harray. All rights reserved.
//

#ifndef YHDistanceRange_h
#define YHDistanceRange_h
// 表示一组动画起始位置、持续时间、距离的结构体
typedef struct _YHAnimateDistanceRange
{
    CGFloat beiginLocation;
    CGFloat distance;
    CGFloat duration;
    
}YHAnimateDistanceRange;

NS_INLINE  YHAnimateDistanceRange YHAnimateDistanceRangeMake(CGFloat y, CGFloat distance, CGFloat durantion) {
    YHAnimateDistanceRange range;
    range.beiginLocation = y;
    range.distance = distance;
    range.duration = durantion;
    return range;
}
NS_INLINE NSString * NSStringFromAnimatedDistanceRange(YHAnimateDistanceRange range) {
    return [NSString stringWithFormat:@"location:%f, distance:%f, durantion: %f", range.beiginLocation, range.distance, range.duration];
}

typedef struct _YHAnimateAlphaRange
{
    CGFloat beiginAlpha;
    CGFloat endAlpha;
}YHAnimateAlphaRange;

NS_INLINE YHAnimateAlphaRange YHAnimateAlphaRangeMake(CGFloat beigin, CGFloat end) {
    YHAnimateAlphaRange alpha;
    alpha.beiginAlpha = beigin;
    alpha.endAlpha = end;
    return alpha;
}

#endif /* YHDistanceRange_h */
