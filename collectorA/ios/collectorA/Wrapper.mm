//
//  Wrapper.m
//  collectorA
//
//  Created by Mirren King-Smith on 5/12/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Wrapper.h"
#import <UIKit/UIKit.h>

//#import "opencv2/imgcodecs/ios.h"

@implementation Wrapper

+ (UIImage *)basicImageTest
{
  UIImage* image = [UIImage imageNamed:@"lena.png"];
  
  return image;
}

@end
