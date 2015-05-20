//
//  PictureCollectionViewCell.h
//  HallOfFrame
//
//  Created by Max Lettenberger on 5/20/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PictureTableViewCellDelegate <NSObject>

- (void) pictureTableViewCell:(id)cell didSelectImage:(UIImage *)image;

@end

@interface PictureTableViewCell : UITableViewCell

@property id<PictureTableViewCellDelegate> delegate;

@end
