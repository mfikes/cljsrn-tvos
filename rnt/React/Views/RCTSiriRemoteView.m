//
//  RCTViewTVOS.m
//  React
//
//  Created by Timothy Braun on 11/16/15.
//  Copyright © 2015 Facebook. All rights reserved.
//

#import "RCTSiriRemoteView.h"

@interface RCTSiriRemoteView () {
  UISwipeGestureRecognizer *_onSwipeLeftGesture;
  UISwipeGestureRecognizer *_onSwipeRightGesture;
  UISwipeGestureRecognizer *_onSwipeDownGesture;
  UISwipeGestureRecognizer *_onSwipeUpGesture;
}

@end

@implementation RCTSiriRemoteView

#define setOnSwipe(DIRECTION)                                                   \
  - (void)setOnSwipe##DIRECTION:(RCTDirectEventBlock)block                      \
  {                                                                             \
    _onSwipe##DIRECTION = block;                                                \
    if (_onSwipe##DIRECTION) {                                                  \
      [self removeGestureRecognizer:_onSwipe##DIRECTION##Gesture];              \
      _onSwipe##DIRECTION##Gesture = nil;                                       \
    }                                                                           \
                                                                                \
    if (block) {                                                                \
      UISwipeGestureRecognizer *swipeRecognizer =                               \
                         [[UISwipeGestureRecognizer alloc] initWithTarget:self  \
                                                                   action:@selector(swipe##DIRECTION:)]; \
      swipeRecognizer.direction = UISwipeGestureRecognizerDirection##DIRECTION; \
      [self addGestureRecognizer:swipeRecognizer];                              \
      _onSwipe##DIRECTION##Gesture = swipeRecognizer;                           \
    } else if(_onSwipe##DIRECTION##Gesture) {                                   \
      [self removeGestureRecognizer:_onSwipe##DIRECTION##Gesture];              \
      _onSwipe##DIRECTION##Gesture = nil;                                       \
    }                                                                           \
  }                                                                             \
                                                                                \
  - (void)swipe##DIRECTION:(UIGestureRecognizer * __unused)gesture              \
  {                                                                             \
    _onSwipe##DIRECTION(nil);                                                   \
  }

setOnSwipe(Left)
setOnSwipe(Right)
setOnSwipe(Up)
setOnSwipe(Down)

//- (void)setOnSwipeLeft:(RCTDirectEventBlock)onSwipeLeft
//{
//  _onSwipeLeft = onSwipeLeft;
//  if(onSwipeLeft) {
//    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeft:)];
//    swipe.direction = UISwipeGestureRecognizerDirectionLeft;
//    [self addGestureRecognizer:swipe];
//    _onSwipeLeftGesture = swipe;
//  } else if(_onSwipeLeftGesture) {
//    [self removeGestureRecognizer:_onSwipeLeftGesture];
//    _onSwipeLeftGesture = nil;
//  }
//}
//
//- (void)swipeLeft:(UIGestureRecognizer * __unused)gesture
//{
//  _onSwipeLeft(nil);
//}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
