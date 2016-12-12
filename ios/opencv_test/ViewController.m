//
//  ViewController.m
//  opencv_test
//
//  Created by Mirren King-Smith on 12/12/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

// RCTMapManager.m
#import <MapKit/MapKit.h>


@implementation ViewController

@synthesize imageView;

RCT_EXPORT_MODULE()

- (UIView *)view
{
  return [[MKMapView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(pitchEnabled, BOOL)

@end
