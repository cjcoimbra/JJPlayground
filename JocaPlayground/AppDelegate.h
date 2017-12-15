//
//  AppDelegate.h
//  JocaPlayground
//
//  Created by Christian Coimbra on 17/08/15.
//  Copyright (c) 2015 Spacecat Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVAudioSession.h>
#include <AudioToolbox/AudioToolbox.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) AVAudioPlayer *theAudio;

@end

