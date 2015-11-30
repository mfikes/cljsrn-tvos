//
//  RTCViewTVOSManager.m
//  React
//
//  Created by Timothy Braun on 11/17/15.
//  Copyright © 2015 Facebook. All rights reserved.
//

#import "RCTSiriRemoteViewManager.h"

#import "RCTSiriRemoteView.h"

@implementation RCTSiriRemoteViewManager

RCT_EXPORT_MODULE();

- (UIView *)view {
  RCTSiriRemoteView *view = [RCTSiriRemoteView new];
  return view;
}

RCT_EXPORT_VIEW_PROPERTY(onSwipeLeft, RCTDirectEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onSwipeRight, RCTDirectEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onSwipeUp, RCTDirectEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onSwipeDown, RCTDirectEventBlock);

@end
