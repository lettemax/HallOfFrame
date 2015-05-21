//
//  ViewController.m
//  HallOfFrame
//
//  Created by Max Lettenberger on 5/20/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import "FeedViewController.h"
#import "PictureTableViewCell.h"
#import "ColorButtonsViewController.h"
#import <UIKit/UIKit.h>
#import "Picture.h"


@interface FeedViewController () <UITableViewDataSource, UITableViewDelegate, ColorButtonsViewControllerDelegate>

@property NSIndexPath *selectedIndexPath;

@end

@implementation FeedViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.pictures = [[NSArray alloc] initWithObjects:@"airbud", @"batman", @"charlize", @"bradpitt", @"dog", nil];

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PictureTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PictureCell" forIndexPath:indexPath];
    cell.pictureView.image = [UIImage imageNamed:self.pictures[indexPath.row]];
    cell.imageView.image = nil;
    cell.backgroundColor = [UIColor grayColor];

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.selectedIndexPath = indexPath;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ColorButtonsViewController *cbVC = segue.destinationViewController;
    Picture *picture;
    cbVC.picture.image 
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.pictures.count;
}



@end
