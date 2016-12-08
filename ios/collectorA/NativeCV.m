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

RCT_EXPORT_METHOD(cv_basicTest:(NSString *)input)
{
  RCTLog(@"Basic Test: Entry: %@", input);
}

  RCT_EXPORT_METHOD(cv_callbackTest)
{
  RCTLog(@"Callback Test: Entry");
}

  RCT_EXPORT_METHOD(cv_startCamera)
{
  //UIImage* image = [Wrapper basicImageTest];
  
  RCTLog(@"Starting Camera: Entry");
  
}

  RCT_EXPORT_METHOD(cv_stopCamera)
{
  RCTLog(@"Stopping Camera: Entry");
}

@end
