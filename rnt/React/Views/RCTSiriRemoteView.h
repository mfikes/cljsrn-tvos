//
//  RCTViewTVOS.h
//  React
//
//  Created by Timothy Braun on 11/16/15.
//  Copyright © 2015 Facebook. All rights reserved.
//

#import "RCTView.h"

@interface RCTSiriRemoteView : RCTView

@property (nonatomic, copy) RCTDirectEventBlock onSwipeLeft;
@property (nonatomic, copy) RCTDirectEventBlock onSwipeRight;
@property (nonatomic, copy) RCTDirectEventBlock onSwipeUp;
@property (nonatomic, copy) RCTDirectEventBlock onSwipeDown;

@end
