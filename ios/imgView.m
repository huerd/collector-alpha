//
//  imgView.m
//  opencv_test
//
//  Created by Mirren King-Smith on 14/12/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "imgView.h"
#import "imgViewManager.h"


@implementation imgView : UIView

- (instancetype)init {
  self = [super init];
  if (self) {
    
    UIImage *image = [UIImage imageNamed:@"arthurtest.png"];
       
    // Allocate and initialise a new view for the desired image
    UIImageView * imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arthurtest.png"]];
    
    // Render this imageView as a subview of instantiated imgView
    [self addSubview:imageView];
    
    // Set self frame to be the size of the image.
    self.frame = CGRectMake(imageView.frame.origin.x, imageView.frame.origin.y,
                            image.size.width, image.size.height);
  }
  return self;
}

/*
 - (void)layoutSubviews
 {
 [super layoutSubviews];
 RCTAssert(self.subviews.count == 1, @"we should only have exactly one subview");
 }
 */

@end
