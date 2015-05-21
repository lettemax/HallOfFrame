//
//  ColorButtonsViewController.h
//  HallOfFrame
//
//  Created by Max Lettenberger on 5/20/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ColorButtonsViewControllerDelegate <NSObject>

-(void) colorButtonsViewController:(id)viewController didSelectColor:(UIColor *)color;

@end

@interface ColorButtonsViewController : UIViewController

@end
