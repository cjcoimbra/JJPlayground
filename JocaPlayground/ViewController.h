//
//  ViewController.h
//  JocaPlayground
//
//  Created by Christian Coimbra on 17/08/15.
//  Copyright (c) 2015 Spacecat Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>
{
    IBOutlet UIScrollView * colorScroll;
    IBOutlet UIScrollView * vehicleScroll;
    IBOutlet UIImageView * car1;
    IBOutlet UIImageView * car2;
    IBOutlet UIImageView * car3;
    IBOutlet UIImageView * car4;
    IBOutlet UIImageView * car5;
    IBOutlet UIImageView * car6;
    IBOutlet UIImageView * car7;
 
}
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *heightConstraint;
-(void)makeColors;
-(UIColor *)colorWithIndex:(int)i;
-(void)paint:(id)sender;
-(IBAction)back:(id)sender;
@end

