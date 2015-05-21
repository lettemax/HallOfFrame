//
//  ColorButtonsViewController.m
//  HallOfFrame
//
//  Created by Max Lettenberger on 5/20/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import "ButtonsViewController.h"
#import "MainViewController.h"
#import "PictureTableViewCell.h"
#import "Picture.h"

@interface ButtonsViewController () 

@end

@implementation ButtonsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)onBlueButtonPressed:(UIButton *)sender {
    [self.delegate buttonsViewController:self didSelectColor:sender.backgroundColor];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)onRedButtonPressed:(UIButton *)sender {
    [self.delegate buttonsViewController:self didSelectColor:sender.backgroundColor];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)onGreenButtonPressed:(UIButton *)sender {
    [self.delegate buttonsViewController:self didSelectColor:sender.backgroundColor];
    [self dismissViewControllerAnimated:YES completion:nil];
}




@end
