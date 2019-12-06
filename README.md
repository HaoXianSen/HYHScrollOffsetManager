# HYHScrollOffsetManager

[![CI Status](https://img.shields.io/travis/1335430614@qq.com/HYHScrollOffsetManager.svg?style=flat)](https://travis-ci.org/1335430614@qq.com/HYHScrollOffsetManager)
[![Version](https://img.shields.io/cocoapods/v/HYHScrollOffsetManager.svg?style=flat)](https://cocoapods.org/pods/HYHScrollOffsetManager)
[![License](https://img.shields.io/cocoapods/l/HYHScrollOffsetManager.svg?style=flat)](https://cocoapods.org/pods/HYHScrollOffsetManager)
[![Platform](https://img.shields.io/cocoapods/p/HYHScrollOffsetManager.svg?style=flat)](https://cocoapods.org/pods/HYHScrollOffsetManager)

According to the scroll view offset do something, like change navigation bar alpha. I wrapped a change navigation bar alpha animation, you can make custom animation or do something by yourself. Simply construct a handle by scroll offset. 

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

iOS 8.0 later

## Installation

HYHScrollOffsetManager is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'HYHScrollOffsetManager'
```

## Example
``` ruby
@property (nonatomic, strong) HYHScrollViewManager *scrollViewManager;
/// 应用默认的navigation bar 处理动画
_scrollViewManager = [HYHScrollViewManager scrollViewManager:_tableView];
_scrollViewManager.animateRange = HYHAnimateDistanceRangeMake(100, 90, 0.25);

/// 应用自己处理

_scrollViewManager = [HYHScrollViewManager scrollViewManager:_tableView];
_scrollViewManager.animateRange = HYHAnimateDistanceRangeMake(100, 90, 0.25);
_scrollViewManager.animationType = HYHScrollOffsetAnimationTypeCustom;
_scrollViewManager.customAnimationBlock = ^(CGPoint offset, HYHAnimateDistanceRange range) {
  // handle logic by offset
};

```

## Author

I'm harry, and a iOSer. You can send me  QQ email ([1335430614@qq.com]), or has issues in Issues module.

## License

HYHScrollOffsetManager is available under the MIT license. See the LICENSE file for more info.
