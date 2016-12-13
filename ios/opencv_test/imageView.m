//
//  imageView.m
//  opencv_test
//
//  Created by Mirren King-Smith on 13/12/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//


#import "imageView.h"
#import "imageViewManager.h"


@implementation imageView : UIView

- (instancetype)init {
    self = [super init];
    if (self) {
      
      UIImage *image = [UIImage imageNamed:@"arthurtest.png"];
      
      
      
      // Allocate and initialise a new view for the desired image
      UIImageView * imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arthurtest.png"]];
      
      imageView.frame = CGRectMake(imageView.frame.origin.x - (image.size.width / 2), imageView.frame.origin.y,
                                   image.size.width, image.size.height);
      
      NSLog(@"height: %f", (CGRectGetHeight(imageView.frame)));
      // Allocate and initialise a new view to render to React Native
     // UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
      
      [self addSubview:imageView];
      
      // Make imageView a subview of view (necessary so React doesn't override background)
     // [self addSubview:view];
       RCTLog(@"test");
      //self = view;
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

/*
 UIView *iview=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
 
 UIImageView * imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"a.png"]];
 
 [iview addSubview:imageView];
 
 UIView *newView = [UIView alloc];
 
 [newView addSubview:iview];
 RCTLog(@"test");
 return newView;
*/
