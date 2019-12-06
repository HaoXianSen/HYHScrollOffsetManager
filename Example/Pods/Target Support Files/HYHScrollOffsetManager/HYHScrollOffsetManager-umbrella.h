#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "HYHAnimationManager.h"
#import "HYHDistanceRange.h"
#import "HYHScrollOffsetManager.h"
#import "HYHScrollViewObserver.h"
#import "UIView+HYHParentViewController.h"

FOUNDATION_EXPORT double HYHScrollOffsetManagerVersionNumber;
FOUNDATION_EXPORT const unsigned char HYHScrollOffsetManagerVersionString[];

