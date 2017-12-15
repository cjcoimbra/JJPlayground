//
//  Utils.m
//  JocaPlayground
//
//  Created by Christian Coimbra on 20/08/15.
//  Copyright (c) 2015 Spacecat Studio. All rights reserved.
//

#import "Utils.h"

@implementation Utils

+(CGFloat)screenHeight {
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    return screenRect.size.height;
}

+(CGFloat)screenWidth {
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    return screenRect.size.width;
}
@end
