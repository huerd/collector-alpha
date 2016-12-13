//
//  imgViewManager.m
//  opencv_test
//
//  Created by Mirren King-Smith on 14/12/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "imgViewManager.h"
#import "RCTLog.h"
#import "imgView.h"

@implementation imgViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  return [[imgView alloc] init];
}


- (NSDictionary *)constantsToExport
{
  imgView *iv = [[imgView alloc] init];
  
  RCTLog(@"height: %f", (CGRectGetHeight(iv.frame)));

  
  return @{
             @"ComponentHeight": @(CGRectGetHeight(iv.frame)),
             @"ComponentWidth": @(CGRectGetWidth(iv.frame)),
           };
}


@end
