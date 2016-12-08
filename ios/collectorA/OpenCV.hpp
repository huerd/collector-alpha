//
//  OpenCV.hpp
//  collectorA
//
//  Created by Mirren King-Smith on 8/12/2016.
//  Copyright © 2016 Facebook. All rights reserved.
//

#ifndef OpenCV_hpp
#define OpenCV_hpp

#include <stdio.h>
#include <opencv2/core.hpp>
#include <UIKit/UIKit.h>


class OpenCV
{
public:
  static void basicTest (std::string input);
  
public:
  static std::string callbackTest();
  
public:
  static void startCamera();
  
public:
  static void stopCamera();
  
};



#endif /* OpenCV_hpp */


