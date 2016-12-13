//
//  imageViewManager.m
//  opencv_test
//
//  Created by Mirren King-Smith on 12/12/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "imageViewManager.h"
#import "RCTLog.h"
#import "imageView.h"

@implementation imageViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  return [[imageView alloc] init];
}


- (NSDictionary *)constantsToExport
{
  //imageView *iv = [[imageView alloc] init];
  
  
  
  return @{
          
        //   @"ComponentHeight": @(CGRectGetHeight(iv.frame)),
         //  @"ComponentWidth": @(CGRectGetWidth(iv.frame)),
           @"Test": @"test",
           @"Test2": @"test2",
           };
}


@end
