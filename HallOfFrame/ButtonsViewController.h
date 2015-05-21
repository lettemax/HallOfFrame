//
//  ColorButtonsViewController.h
//  HallOfFrame
//
//  Created by Max Lettenberger on 5/20/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ButtonsViewControllerDelegate <NSObject>

-(void) buttonsViewController:(id)viewController didSelectColor:(UIColor *)color;

@end

@interface ButtonsViewController : UIViewController

@property id<ButtonsViewControllerDelegate> delegate;

@property NSIndexPath *selectedIndexPath;

@property NSInteger row;

@end
