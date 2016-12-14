//
//  cvCameraManager.m
//  opencv_test
//
//  Created by Mirren King-Smith on 14/12/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "RCTLog.h"

#import "cvCameraManager.h"
#import "cvCamera.h"

@implementation cvCameraManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  RCTLog(@"entry");
  
  return [[cvCamera alloc] init];
}

@end
