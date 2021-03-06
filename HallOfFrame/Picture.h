//
//  Picture.h
//  HallOfFrame
//
//  Created by Max Lettenberger on 5/20/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Picture : NSObject

@property UIColor *frameBackgroundColor;
@property NSString *image;

-(instancetype)initWithImageName:(NSString *)image frameBackgroundColor:(UIColor *)color;

@end
