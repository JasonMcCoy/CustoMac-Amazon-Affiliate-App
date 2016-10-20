//
//  UtilityClass.h
//  GenerateXml
//
//  Created by Naveen on 4/28/15.
//  Copyright (c) 2015 Vijay S Yadav. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface UtilityClass : NSObject<AVAudioPlayerDelegate>
{
    AVAudioPlayer *audioPlayer;
}

@property (nonatomic, assign)  UIView *vw;

+ (id)sharedManager;
-(void)showLoadingScreen;
-(void)removeLoadingScreen;
+(BOOL)isAppVersionValid:(NSString*)appVersion;
+(BOOL)isFormVersionValid:(NSString*)formVersion;

-(void)playAudio:(NSString*)fileName;
-(void)prepareAudio;

@end
