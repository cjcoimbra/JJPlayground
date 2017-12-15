//
//  PuzzleViewController.h
//  JocaPlayground
//
//  Created by Christian Coimbra on 18/08/15.
//  Copyright (c) 2015 Spacecat Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PuzzleViewController : UIViewController <UIScrollViewDelegate>
{
    IBOutlet UIScrollView *leftScroll;
    IBOutlet UIScrollView *middleScroll;
    IBOutlet UIScrollView *rightScroll;
}
-(IBAction)back:(id)sender;
@end
