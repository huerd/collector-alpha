//
//  Wrapper.h
//  collectorA
//
//  Created by Mirren King-Smith on 5/12/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#ifndef Wrapper_h
#define Wrapper_h

#import "OpenCV.hpp"


#endif /* Wrapper_h */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "Link.h"



@interface Wrapper : NSObject

+ (void) basicTest;
+ (NSString *) callbackTest;
+ (void) startCamera;
+ (void) stopCamera;

@end
