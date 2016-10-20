//
//  WebViewController.h
//  MenuExample
//
//  Created by Naveen on 9/24/16.
//  Copyright © 2016 Yalantis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController < UIWebViewDelegate>
{
    IBOutlet UIWebView *amazonWebView;
    NSString *headerText;
    NSString *url;
    IBOutlet UIImageView *img;
    NSString *imgName;
}

@property (nonatomic, strong) IBOutlet UIWebView *amazonWebView;
@property (nonatomic, strong) NSString *url;

@property (nonatomic, strong) IBOutlet UIImageView *img;
@property (nonatomic, strong) NSString *imgName;
@property (nonatomic, strong) NSString *headerText;

@end
