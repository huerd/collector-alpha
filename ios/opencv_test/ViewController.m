//
//  ViewController.m
//  opencv_test
//
//  Created by Mirren King-Smith on 12/12/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import "RCTLog.h"

@implementation ViewController

@synthesize imageView;

RCT_EXPORT_MODULE()

- (UIView *)view
{
  
  UIView *iview=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
  
  UIImageView * imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"a.png"]];
  
  [iview addSubview:imageView];
  
  RCTLog(@"test");
  return iview;
}


@end
