//
//  WebViewController.m
//  MenuExample
//
//  Created by Naveen on 9/24/16.
//  Copyright © 2016 Yalantis. All rights reserved.
//

#import "WebViewController.h"


@interface WebViewController ()

@end

@implementation WebViewController
@synthesize amazonWebView;
@synthesize url;
@synthesize img;
@synthesize imgName;
@synthesize headerText;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadURL];
    

//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:imgName]];

    // Do any additional setup after loading the view from its nib.
}


-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    UILabel *lblHeader = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width-210)/2, 10, 210, 45)];
    [lblHeader setText:headerText];
    [lblHeader setTextAlignment:NSTextAlignmentCenter];
    [lblHeader setTextColor:[UIColor blackColor]];
    [lblHeader setFont:[UIFont fontWithName:@"Verdana-Bold" size:16.0f]];
    
    [self.view addSubview:lblHeader];

}
-(void)loadURL
{
    NSURL *amazonURL = [NSURL URLWithString:url];
    [amazonWebView loadRequest:[NSURLRequest requestWithURL:amazonURL]];
    [amazonWebView setDelegate:self];
    
//    UIImage *backImg = [UIImage imageNamed:imgName];
//    
//    float scaleRatio = backImg.size.height/backImg.size.width;
//    
//    float screenWidth = [[UIScreen mainScreen]bounds].size.height/[[UIScreen mainScreen]bounds].size.width;
//    
//    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen]bounds].size.width,[[UIScreen mainScreen]bounds].size.width*screenWidth)];
//    imgView.contentMode = UIViewContentModeScaleAspectFit;
//    imgView.image = backImg;
//    [self.view addSubview:imgView];

    
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:imgName]];

//    self.img.image = [UIImage imageNamed:imgName];
}


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
//    self.img.image = [UIImage imageNamed:imgName];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error
{
    
}


@end
