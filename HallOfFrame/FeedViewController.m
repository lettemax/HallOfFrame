//
//  ViewController.m
//  HallOfFrame
//
//  Created by Max Lettenberger on 5/20/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import "FeedViewController.h"
#import "PictureTableViewCell.h"
#import <UIKit/UIKit.h>


@interface FeedViewController () <UITableViewDataSource, UITableViewDelegate>

//@property UIImageView *imageView;

@end

@implementation FeedViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.pictures = [[NSArray alloc] initWithObjects:@"airbud", @"batman", @"charlize", @"bradpitt", @"dog", nil];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PictureTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PictureCell" forIndexPath:indexPath];
    self.imageView.image = [UIImage imageNamed:self.pictures[indexPath.row]];
    cell.imageView.image = self.imageView.image;
    cell.backgroundColor = [UIColor grayColor];

    return cell;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.pictures.count;
}

//- (void) //ontapofimagemethod
//{
//    //unhiding view w/ color buttons
//}
//
//- (void) //ontapofcolorbutton
//{
//    //change color, hide view
//}
@end
