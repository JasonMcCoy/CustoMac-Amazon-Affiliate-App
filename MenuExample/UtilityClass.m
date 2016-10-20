//
//  UtilityClass.m
//  GenerateXml
//
//  Created by Naveen on 4/28/15.
//  Copyright (c) 2015 Vijay S Yadav. All rights reserved.
//

#import "UtilityClass.h"
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>

@implementation UtilityClass


+ (id)sharedManager {
    static UtilityClass *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}
-(void)showLoadingScreen
{
    self.vw = [[UIView alloc] initWithFrame:CGRectMake([UtilityClass screenSize].size.width/2-100, [UtilityClass screenSize].size.height/2-100, 200, 200)];
    self.vw.backgroundColor = [UIColor lightGrayColor];
    self.vw.layer.cornerRadius = 16.0f;
    self.vw.layer.borderWidth = 5.0f;
    self.vw.layer.borderColor = [UIColor blueColor].CGColor;
    
    
    UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    [indicator setFrame:CGRectMake(self.vw.frame.size.width/2-18.5 , self.vw.frame.size.height/2-18.5, indicator.frame.size.width , indicator.frame.size.height)];
    [indicator startAnimating];
    
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(self.vw.frame.size.width/2-30 , self.vw.frame.size.height/2+28.5, 100 , 20)];
    [lbl setTextColor:[UIColor blackColor]];
    [lbl setText:@"Loading..."];

    [self.vw addSubview:indicator];
    [self.vw addSubview:lbl];

    UINavigationController *nvc = (UINavigationController*)[[UIApplication sharedApplication] keyWindow].rootViewController;
    [nvc.topViewController.view addSubview:self.vw];
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0f target:self selector:@selector(timerDone) userInfo:nil repeats:NO];
}


-(void)removeLoadingScreen
{
    [self.vw removeFromSuperview];
}



+(BOOL)isAppVersionValid:(NSString*)appVersion
{
    return [[NSString stringWithFormat:@"%f", [appVersion floatValue]] isEqualToString:appVersion];
}

+(BOOL)isFormVersionValid:(NSString*)formVersion
{
    if([formVersion length]==0){
        return NO;
    }
    
    NSString *regExPattern = @"[0-9]*.[0-9]*";
    
    NSPredicate *regExPredicate =
    [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regExPattern];
    BOOL myStringMatchesRegEx = [regExPredicate evaluateWithObject:formVersion];
    return myStringMatchesRegEx;
}

+(CGRect)screenSize
{
    return [[UIScreen mainScreen]bounds];
}

-(void)prepareAudio
{
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                         pathForResource:@"switch11"
                                         ofType:@"mp3"]];
    
    NSError *error;
    audioPlayer = [[AVAudioPlayer alloc]
                                  initWithContentsOfURL:url
                                  error:&error];
    if (error)
    {
        NSLog(@"Error in audioPlayer: %@",
              [error localizedDescription]);
    } else {
        audioPlayer.delegate = self;
        [audioPlayer prepareToPlay];
    }

}

-(void)playAudio:(NSString*)fileName
{
        [audioPlayer play];
}


                  
@end
