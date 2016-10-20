//
//  VPRubberCell.h
//  VPRubberTable
//
//  Created by Vitalii Popruzhenko on 5/27/14.
//  Copyright (c) 2014 Vitaliy Popruzhenko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VPRubberSettings.h"

@interface VPRubberCell : UICollectionViewCell {
    CGFloat heightNew;
}
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *textLbl;
@property (weak, nonatomic) IBOutlet UIButton *centerBut;

- (void)setNewHeight:(CGFloat)h;

@end
