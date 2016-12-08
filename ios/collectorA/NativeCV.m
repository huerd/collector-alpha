//
//  NativeCV.m
//  collectorA
//
//  Created by Mirren King-Smith on 8/12/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RCTLog.h"

#import "NativeCV.h"
#import "Wrapper.h"


@implementation NativeCV

  RCT_EXPORT_MODULE();

  RCT_EXPORT_METHOD(imageTest:(NSString *)name)
  {
    UIImage* image = [Wrapper basicImageTest];
  
    RCTLog(name);
  
  }

@end
