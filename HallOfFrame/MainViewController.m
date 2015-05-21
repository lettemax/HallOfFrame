//
//  ViewController.m
//  HallOfFrame
//
//  Created by Max Lettenberger on 5/20/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import "MainViewController.h"
#import "PictureTableViewCell.h"
#import "ButtonsViewController.h"
#import <UIKit/UIKit.h>
#import "Picture.h"

@interface MainViewController () <UITableViewDataSource, UITableViewDelegate, ButtonsViewControllerDelegate, PictureTableViewCellDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Picture *airbud = [[Picture alloc] initWithImageName:@"airbud" frameBackgroundColor:[UIColor grayColor]];
    Picture *batman = [[Picture alloc] initWithImageName:@"batman" frameBackgroundColor:[UIColor grayColor]];
    Picture *charlize = [[Picture alloc] initWithImageName:@"charlize" frameBackgroundColor:[UIColor grayColor]];
    Picture *bradpitt = [[Picture alloc] initWithImageName:@"bradpitt" frameBackgroundColor:[UIColor grayColor]];
    Picture *dog = [[Picture alloc] initWithImageName:@"dog" frameBackgroundColor:[UIColor greenColor]];

    self.pictures = [[NSMutableArray alloc] initWithObjects:airbud, batman, charlize, bradpitt, dog, nil];

}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Picture *picture = [self.pictures objectAtIndex:indexPath.row];

    PictureTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PictureCell" forIndexPath:indexPath];

    cell.pictureView.image = [UIImage imageNamed:picture.image];
    cell.backgroundColor = picture.frameBackgroundColor;

    cell.imageView.image = nil;

    NSLog(@"%@", picture.frameBackgroundColor);

    return cell;


}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.selectedIndexPath = indexPath;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ButtonsViewController *bVC = segue.destinationViewController;
    bVC.row = self.selectedIndexPath.row;
    bVC.delegate = self;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.pictures.count;
}

-(void)buttonsViewController:(id)viewController didSelectColor:(UIColor *)color
{
    Picture *picture = [self.pictures objectAtIndex:self.selectedIndexPath.row];
    picture.frameBackgroundColor = color;

    [self.pictures replaceObjectAtIndex:self.selectedIndexPath.row withObject:picture];


    //cell.delegate = self;

    NSLog(@"%@", picture.frameBackgroundColor);
    NSLog(@"%@", color);

    [self.tableView reloadData];

    picture = [self.pictures objectAtIndex:self.selectedIndexPath.row];

    NSLog(@"%@", picture.frameBackgroundColor);

    NSLog(@"boom");

}



@end
