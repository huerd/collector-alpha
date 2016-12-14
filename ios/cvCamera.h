//
//  cvCamera.h
//  opencv_test
//
//  Created by Mirren King-Smith on 14/12/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#ifndef cvCamera_h
#define cvCamera_h


#endif /* cvCamera_h */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <opencv2/videoio/cap_ios.h>

@interface cvCamera : UIView<CvVideoCameraDelegate>

{
  CvVideoCamera* videoCamera;
  BOOL isCapturing;
}

@property (nonatomic, strong) CvVideoCamera* videoCamera;
@property (nonatomic, strong) UIImageView *imageView;

//Add properties here

@end
