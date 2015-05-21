//
//  Picture.m
//  HallOfFrame
//
//  Created by Max Lettenberger on 5/20/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import "Picture.h"

@implementation Picture

-(instancetype)initWithImageName:(NSString *)image frameBackgroundColor:(UIColor *)color
{
    self = [super init];
    self.image = image;
    self.frameBackgroundColor = color;
    return self;
}



@end
