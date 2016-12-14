//
//  cvCamera.m
//  opencv_test
//
//  Created by Mirren King-Smith on 14/12/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <opencv2/imgcodecs/ios.h>

#import "cvCamera.h"
#import "cvCameraManager.h"
#import "OpenCV.h"
#import "Wrapper.h"

#import "RCTLog.h"

@implementation cvCamera

@synthesize imageView;

- (instancetype)init {
  
  imageView = [[UIImageView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  //imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arthurtest.png"]];

  self = [super init];
  if (self) {
    
    videoCamera = [[CvVideoCamera alloc]
                   initWithParentView:imageView];
    videoCamera.delegate = self;
    
    // Make settings more modular in the future, see: react-native-camera
    videoCamera.defaultAVCaptureDevicePosition =
    AVCaptureDevicePositionBack;
    
    videoCamera.defaultAVCaptureSessionPreset =
    AVCaptureSessionPreset640x480;
    
    videoCamera.defaultAVCaptureVideoOrientation =
    AVCaptureVideoOrientationPortrait;
    
    videoCamera.defaultFPS = 30;
    
    isCapturing = NO;
    
    [self addSubview:imageView];
      }
  
  [videoCamera start];
  isCapturing = YES;
  
  return self;
}


- (void)processImage:(cv::Mat&)image
{
  [Wrapper processVideoImage:image];
}


- (void)dealloc
{
  videoCamera.delegate = nil;
}


@end
