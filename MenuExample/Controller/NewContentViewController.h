//
//  NewContentViewController.h
//  MenuExample
//
//  Created by Naveen on 9/24/16.
//  Copyright © 2016 Yalantis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VPRubberSettings.h"
//#import "MenuExample-swift.h"

@interface NewContentViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *myCollectionView;
@property (strong, nonatomic) IBOutlet UILabel *headerLbl;
//@property (assign, nonatomic) ContentType typeValue;

@property (assign, nonatomic) int selectedIndex;
@property (strong, nonatomic) IBOutlet UIImageView *fullScreenView;
@property (strong, nonatomic) NSString *headerText;


@end
