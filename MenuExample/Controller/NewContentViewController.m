//
//  NewContentViewController.m
//  MenuExample
//
//  Created by Naveen on 9/24/16.
//  Copyright © 2016 Yalantis. All rights reserved.
//

#import "NewContentViewController.h"
#import "WebViewController.h"
#import "UtilityClass.h"

@interface NewContentViewController () {
    float previousScrollViewYOffset;

    NSMutableArray *itemIconSet1;
    NSMutableArray *itemIconSet2;
    NSMutableArray *itemIconSet3;
    NSMutableArray *itemIconSet4;
    NSMutableArray *itemIconSet5;

    NSMutableArray *itemLblSet1;
    NSMutableArray *itemLblSet2;
    NSMutableArray *itemLblSet3;
    NSMutableArray *itemLblSet4;
    NSMutableArray *itemLblSet5;


    NSMutableArray *itemLblURLSet1;
    NSMutableArray *itemLblURLSet2;
    NSMutableArray *itemLblURLSet3;
    NSMutableArray *itemLblURLSet4;
    NSMutableArray *itemLblURLSet5;
    
    NSMutableArray *itemamazonURLSet1;
    NSMutableArray *itemamazonURLSet2;
    NSMutableArray *itemamazonURLSet3;
    NSMutableArray *itemamazonURLSet4;
    NSMutableArray *itemamazonURLSet5;
    
//    NSMutableArray *imgURLS;
    NSMutableArray *imgURLS1;

}
@end

@implementation NewContentViewController
@synthesize selectedIndex;
@synthesize headerLbl;
@synthesize fullScreenView;
@synthesize headerText;
- (void)viewDidLoad
{
    self.fullScreenView.hidden = NO;

    [[UtilityClass sharedManager] prepareAudio];
    [[UtilityClass sharedManager] playAudio:@""];
    if(selectedIndex == 0)
    {
        headerText = @"CustoMac Mini Deluxe";
    }
    else if(selectedIndex == 1)
    {
        headerText = @"CustoMac mATX";
    }
    else if(selectedIndex == 2)
    {
        headerText = @"CustoMac Budget ATX";
    }
    else if(selectedIndex == 3)
    {
        headerText = @"CustoMac Pro";
    }
    else if(selectedIndex == 4)
    {
        headerText = @"CustoMac Mini";
    }

    itemIconSet1 = [NSMutableArray new];
    for (int i = 1; i < 7; i++){
        [itemIconSet1 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"icon%d.png",i]]];
    }

    itemIconSet2 = [NSMutableArray new];
    for (int i = 1; i < 8; i++){
        [itemIconSet2 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"icon%d.png",i]]];
    }

    itemIconSet3 = [NSMutableArray new];
    for (int i = 1; i < 8; i++){
        [itemIconSet3 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"icon%d.png",i]]];
    }

    itemIconSet4 = [NSMutableArray new];
    for (int i = 1; i < 7; i++){
        [itemIconSet4 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"icon%d.png",i]]];
    }

    itemIconSet5 = [NSMutableArray new];
    for (int i = 1; i < 8; i++){
        [itemIconSet5 addObject:[UIImage imageNamed:[NSString stringWithFormat:@"icon%d.png",i]]];
    }
    
    itemLblSet1 = [[NSMutableArray alloc] initWithObjects:@"Gigabyte GA-H170N-WIFI mini-ITX", @"Crucial Budget (8GB)", @"Core i3-6100", @"Samsung 850 EVO 250GB", @"Apex MI-008 (w/ 250W Power Supply)",  @"TP-Link PCI Express Wifi Adapter(n)", nil];

    itemLblSet2 = [[NSMutableArray alloc] initWithObjects:@"Gigabyte GA-Z97N-WiFi mini-ITX", @"Core i3-4370", @"Crucial Ballistix Tactical (8GB)", @"Samsung 850 EVO 250GB", @"Corsair CS 550 Watt",  @"BitFenix Phenom (Black)", @"EVGA GT 740 SC", nil];

    itemLblSet3 = [[NSMutableArray alloc] initWithObjects:@"Gigabyte GA-Z97MX-GAMING 5 mATX", @"Core i5-4690", @"EVGA GT 740 SC", @"Crucial Ballistix Tactical (8GB)", @"Samsung 850 EVO 250GB",  @"Corsair CS 550 Watt", @"Fractal Design Core 1000", nil];

    itemLblSet4 = [[NSMutableArray alloc] initWithObjects:@"Gigabyte GA-Z97-D3H ATX", @"Core i5-4460", @"Crucial Ballistix Tactical (16GB)", @"Samsung 850 EVO 500GB",  @"Corsair CS 550 Watt", @"Corsair Carbide 300R", nil];

    itemLblSet5 = [[NSMutableArray alloc] initWithObjects:@"Gigabyte GA-Z97X-UD3H-BK ATX", @"Core i7-4790", @"EVGA GT 740 SC", @"Crucial Ballistix Tactical (32GB)", @"Samsung 850 EVO 1TB",  @"Corsair RM 650 Watt", @"Corsair Carbide 500R", nil];

    
    itemLblURLSet1 = [[NSMutableArray alloc] initWithObjects:@"http://amzn.to/2dfTJz9", @"http://amzn.to/2cMzqZd", @"http://amzn.to/2cqUbsI", @"http://amzn.to/2cqSStX", @"http://amzn.to/2dd3WK8",  @"http://amzn.to/2cYGdOj", nil];

    itemLblURLSet2 = [[NSMutableArray alloc] initWithObjects:@"http://amzn.to/2duINuS", @"http://amzn.to/2duJjt3", @"http://amzn.to/2cYevBI", @"http://amzn.to/2deHuig", @"http://amzn.to/2cYgxSq",  @"http://amzn.to/2dn7ygA", @"http://amzn.to/2d1C8Ng",nil];

    itemLblURLSet3 = [[NSMutableArray alloc] initWithObjects:@"http://amzn.to/2dn8TE9", @"http://amzn.to/2dxFtSu", @"http://amzn.to/2dn9hmf", @"http://amzn.to/2dxEBO6", @"http://amzn.to/2dbQya1",  @"http://amzn.to/2duNFjA", @"http://amzn.to/2duNtRq",nil];

    itemLblURLSet4 = [[NSMutableArray alloc] initWithObjects:@"http://amzn.to/2duOV6y", @"http://amzn.to/2dnk6QB", @"http://amzn.to/2dxFTs3", @"http://amzn.to/2dbRJG5", @"http://amzn.to/2cYmYVr",  @"http://amzn.to/2duOitC", nil];

    itemLblURLSet5 = [[NSMutableArray alloc] initWithObjects:@"http://amzn.to/2cYnXFt", @"http://amzn.to/2cYmW01", @"http://amzn.to/2dncOkq", @"http://amzn.to/2d1HojJ", @"http://amzn.to/2d4YsRQ",  @"http://amzn.to/2duPRrD", @"http://amzn.to/2duPg9j",nil];
    
    imgURLS1 = [[NSMutableArray alloc] initWithObjects: @"content_musicNew", @"content_filmsNew", @"content_musicNew", @"content_filmsNew", @"content_musicNew", nil];

    
    itemamazonURLSet1 = [[NSMutableArray alloc] initWithObjects:
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B015CQ8D9Q",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00MMLUYVU",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B015VPX2EO",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00OAJ412U",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B001H0BA24",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B007GMPZ0A", nil];
    
    itemamazonURLSet2 = [[NSMutableArray alloc] initWithObjects:
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00K8HNGYW",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00LV8TZLU",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B006YG96KO",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00OAJ412U",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00GH9NA6O",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00G47WG9G",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00KK8MEU6", nil];
    
    itemamazonURLSet3 = [[NSMutableArray alloc] initWithObjects:
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00K8HNGXS",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00JST2QEW",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00KK8MEU6",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B006YG96KO",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00OAJ412U",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00GH9NA6O",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00CUSUV0O",nil];
    
    itemamazonURLSet4 = [[NSMutableArray alloc] initWithObjects:
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00K2RQDLQ",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00JIJUBAS",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B006YG9C6C",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00OBRE5UE",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00GH9NA6O",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B006I2H0YS", nil];
    
    itemamazonURLSet5 = [[NSMutableArray alloc] initWithObjects:
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00K872IT6",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00J56YSLM",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00KK8MEU6",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00ID2GPR4",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00OBRFFAS",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B00EB7UIRS",
                         @"com.amazon.mobile.shopping.web://www.amazon.com/o/ASIN/B005E983JW",nil];
    
    imgURLS1 = [[NSMutableArray alloc] initWithObjects: @"content_musicNew", @"content_filmsNew", @"content_musicNew", @"content_filmsNew", @"content_musicNew", nil];

    NSString *imgName = [imgURLS1 objectAtIndex:selectedIndex];
    UIImage *backImg = [UIImage imageNamed:imgName];

    float scaleRatio = backImg.size.height/backImg.size.width;

    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width*scaleRatio)];
    imgView.contentMode = UIViewContentModeScaleAspectFit;
    imgView.image = [UIImage imageNamed:[imgURLS1 objectAtIndex:selectedIndex]];
//    [self.view addSubview:imgView];
    
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:[imgURLS1 objectAtIndex:selectedIndex]]];
    self.myCollectionView.hidden = NO;
    
//    self.fullScreenView.image = [UIImage imageNamed:[imgURLS objectAtIndex:selectedIndex]];
//    self.fullScreenView.hidden =YES;
    
    UILabel *lblHeader = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width-210)/2, 10, 210, 45)];
    [lblHeader setText:headerText];
    [lblHeader setTextAlignment:NSTextAlignmentCenter];
    [lblHeader setTextColor:[UIColor blackColor]];
    [lblHeader setFont:[UIFont fontWithName:@"Verdana-Bold" size:16.0f]];

    [self.view addSubview:lblHeader];
    
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated{
    [self.view bringSubviewToFront:_myCollectionView];
    [_myCollectionView setBackgroundColor:[UIColor clearColor]];
    
    CGRect cf = _myCollectionView.frame;
    cf.origin.y -=CELLS_ALLIGN;
    cf.size.height +=(CELLS_ALLIGN);
    [_myCollectionView setFrame:cf];
    
    
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@""]];
//    self.fullScreenView.hidden = NO;
    [super viewDidAppear:animated];
    
    
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:[imgURLS1 objectAtIndex:selectedIndex]]];
//    self.fullScreenView.image = [UIImage imageNamed:[imgURLS1 objectAtIndex:selectedIndex]];

    self.fullScreenView.hidden = YES;

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    if(selectedIndex == 0)
    {
        return itemIconSet1.count;
    }
    else if(selectedIndex == 1)
    {
        return itemIconSet2.count;
    }
    else if(selectedIndex == 2)
    {
        return itemIconSet3.count;
    }
    else if(selectedIndex == 3)
    {
        return itemIconSet4.count;
    }
    else if(selectedIndex == 4)
    {
        return itemIconSet5.count;
    }
    return 0;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    VPRubberCell *otherCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    [otherCell setBackgroundColor:[self colorForIndexPath:indexPath]];
    
    if(selectedIndex == 0)
    {
        [otherCell.iconView setImage:[itemIconSet1 objectAtIndex:indexPath.row]];
    }
    else if(selectedIndex == 1)
    {
        [otherCell.iconView setImage:[itemIconSet2 objectAtIndex:indexPath.row]];
    }
    else if(selectedIndex == 2)
    {
        [otherCell.iconView setImage:[itemIconSet3 objectAtIndex:indexPath.row]];
    }
    else if(selectedIndex == 3)
    {
        [otherCell.iconView setImage:[itemIconSet4 objectAtIndex:indexPath.row]];
    }
    else if(selectedIndex == 4)
    {
        [otherCell.iconView setImage:[itemIconSet5 objectAtIndex:indexPath.row]];
    }
    otherCell.centerBut.tag = indexPath.row;
    [otherCell.centerBut addTarget:self action:@selector(buttonSelected:) forControlEvents:UIControlEventTouchUpInside];
    
    if(selectedIndex == 0)
    {
        [otherCell.textLbl setText:[itemLblSet1 objectAtIndex:indexPath.row]];
    }
    else if(selectedIndex == 1)
    {
        [otherCell.textLbl setText:[itemLblSet2 objectAtIndex:indexPath.row]];
    }
    else if(selectedIndex == 2)
    {
        [otherCell.textLbl setText:[itemLblSet3 objectAtIndex:indexPath.row]];
    }
    else if(selectedIndex == 3)
    {
        [otherCell.textLbl setText:[itemLblSet4 objectAtIndex:indexPath.row]];
    }
    else if(selectedIndex == 4)
    {
        [otherCell.textLbl setText:[itemLblSet5 objectAtIndex:indexPath.row]];
    }
    return otherCell;
}

-(void) buttonSelected:(id)sender
{
    UIButton *but = (UIButton*)sender;
    
    
    WebViewController *cntrl = [[WebViewController alloc] initWithNibName:@"WebViewController" bundle:nil];
    
    [[UtilityClass  sharedManager] playAudio:@""];
    
/*    if(but.tag == 0)
    {
        [cntrl setUrl:[itemLblURLSet1 objectAtIndex:0]];
    }
    else if(but.tag == 1)
    {
        [cntrl setUrl:[itemLblURLSet2 objectAtIndex:0]];
    }
    else if(but.tag == 2)
    {
        [cntrl setUrl:[itemLblURLSet3 objectAtIndex:0]];
    }
    else if(but.tag == 3)
    {
        [cntrl setUrl:[itemLblURLSet4 objectAtIndex:0]];
    }
    else if(but.tag == 4)
    {
        [cntrl setUrl:[itemLblURLSet5 objectAtIndex:0]];
    }
    */
    
    if(selectedIndex == 0)
    {
        NSString *str = [itemamazonURLSet1 objectAtIndex:but.tag];
//        NSString *str = @"com.amazon.mobile.shopping.web://";
        if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:str]])
//        if([[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]])
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
            return;
        }
        else
        {
            [cntrl setHeaderText:headerText];
            [cntrl setUrl:[itemLblURLSet1 objectAtIndex:but.tag]];
        }
    }
    else if(selectedIndex == 1)
    {
        NSString *str = [itemamazonURLSet2 objectAtIndex:but.tag];
//        NSString *str = @"com.amazon.mobile.shopping.web://";
        if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:str]])
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
            return;
        }
        else
        {
            [cntrl setHeaderText:headerText];

            [cntrl setUrl:[itemLblURLSet2 objectAtIndex:but.tag]];
        }
    }
    else if(selectedIndex == 2)
    {
        NSString *str = [itemamazonURLSet3 objectAtIndex:but.tag];
//        NSString *str = @"com.amazon.mobile.shopping.web://";

        if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:str]])
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
            return;
        }
        else
        {
            [cntrl setHeaderText:headerText];

            [cntrl setUrl:[itemLblURLSet3 objectAtIndex:but.tag]];
        }
    }
    else if(selectedIndex == 3)
    {
        NSString *str = [itemamazonURLSet4 objectAtIndex:but.tag];
//        NSString *str = @"com.amazon.mobile.shopping.web://";
        if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:str]])
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
            return;
        }
        else
        {
            [cntrl setHeaderText:headerText];

            [cntrl setUrl:[itemLblURLSet4 objectAtIndex:but.tag]];
        }
    }
    else if(selectedIndex == 4)
    {
        NSString *str = [itemamazonURLSet5 objectAtIndex:but.tag];
//        NSString *str = @"com.amazon.mobile.shopping.web://";
        if([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:str]])
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
            return;
        }
        else
        {
            [cntrl setHeaderText:headerText];

            [cntrl setUrl:[itemLblURLSet5 objectAtIndex:but.tag]];
        }
    }
    
    [cntrl setImgName:[imgURLS1 objectAtIndex:selectedIndex]];
    
    [self.navigationController pushViewController:cntrl animated:YES];
    
}

- (UIColor *)colorForIndexPath:(NSIndexPath *)ip{
    switch (ip.row) {
        case 0:
            return RGBColor(0, 170, 172);
            break;
        case 1:
            return RGBColor(0, 106, 109);
            break;
        case 2:
            return RGBColor(190, 50, 106);
            break;
        case 3:
            return RGBColor(50, 144, 14);
            break;
        case 4:
            return RGBColor(204, 67, 0);
            break;
        case 5:
            return RGBColor(26, 129, 182);
            break;
        case 6:
            return RGBColor(204, 178, 0);
            break;
        case 7:
            return RGBColor(125, 14, 162);
            break;
        case 8:
            return RGBColor(108, 0, 199);
            break;
        case 9:
            return RGBColor(32, 32, 32);
            break;
        default:
            return [UIColor clearColor];
            break;
    }
}

//- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    WebViewController *cntrl = [[WebViewController alloc] initWithNibName:@"WebViewController" bundle:nil];
//    
//    [[UtilityClass  sharedManager] playAudio:@""];
//
//    if(selectedIndex == 0)
//    {
//        [cntrl setUrl:[itemLblURLSet1 objectAtIndex:indexPath.row]];
//    }
//    else if(selectedIndex == 1)
//    {
//        [cntrl setUrl:[itemLblURLSet2 objectAtIndex:indexPath.row]];
//    }
//    else if(selectedIndex == 2)
//    {
//        [cntrl setUrl:[itemLblURLSet3 objectAtIndex:indexPath.row]];
//    }
//    else if(selectedIndex == 3)
//    {
//        [cntrl setUrl:[itemLblURLSet4 objectAtIndex:indexPath.row]];
//    }
//    else if(selectedIndex == 4)
//    {
//        [cntrl setUrl:[itemLblURLSet5 objectAtIndex:indexPath.row]];
//    }
//    
//    [cntrl setImgName:[imgURLS objectAtIndex:selectedIndex]];
//    
//    [self.navigationController pushViewController:cntrl animated:YES];
//
//}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *reusableview = nil;
    
    if (kind == UICollectionElementKindSectionHeader) {
        UICollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"headerView" forIndexPath:indexPath];
        
        headerView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 50);
        [[headerView viewWithTag:121] removeFromSuperview];
        headerView.backgroundColor = self.myCollectionView.backgroundColor;

        UIImageView *imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[imgURLS1 objectAtIndex:selectedIndex]]];
        imgView.frame = headerView.frame;
        imgView.contentMode = UIViewContentModeScaleAspectFit;
        [headerView addSubview:imgView];
        
//        UILabel *lbl = [[UILabel alloc] initWithFrame:reusableview.frame];
//        [lbl setTextAlignment:NSTextAlignmentCenter];
//        lbl.tag = 121;
        
        NSString *txt= nil;
//        if(selectedIndex == 0)
//        {
//            txt = @"First";
//        }
//        else if(selectedIndex == 1)
//        {
//            txt = @"Second";
//        }
//        else if(selectedIndex == 2)
//        {
//            txt = @"Third";
//        }
//        else if(selectedIndex == 3)
//        {
//            txt = @"Fourth";
//        }
//        else if(selectedIndex == 4)
//        {
//            txt = @"Fifth";
//        }
//        
//        [lbl setText:txt];
//        
//        lbl.frame = CGRectMake(0, 10, [UIScreen mainScreen].bounds.size.width-50, 50);
//        [lbl setFont:[UIFont fontWithName:@"AmericanTypewriter" size:22.0f]];
//        [lbl setBackgroundColor:[UIColor clearColor]];
//        [lbl setTextColor:[UIColor blackColor]];
//        
//        if(selectedIndex == 0)
//        {
//            txt = @"CustoMac Mini Deluxe";
//        }
//        else if(selectedIndex == 1)
//        {
//            txt = @"CustoMac mATX";
//        }
//        else if(selectedIndex == 2)
//        {
//            txt = @"CustoMac Budget ATX";
//        }
//        else if(selectedIndex == 3)
//        {
//            txt = @"CustoMac Pro";
//        }
//        else if(selectedIndex == 4)
//        {
//            txt = @"CustoMac Mini";
//        }
//        [lbl setText:txt];
//
//        [headerView addSubview:lbl];

        reusableview = headerView;
        
    }
    
    return reusableview;
}

//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    return CGSizeMake(self.myCollectionView.frame.size.width, 200);
//}


@end

