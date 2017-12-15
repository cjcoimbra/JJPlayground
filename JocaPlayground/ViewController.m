//
//  ViewController.m
//  JocaPlayground
//
//  Created by Christian Coimbra on 17/08/15.
//  Copyright (c) 2015 Spacecat Studio. All rights reserved.
//

#import "ViewController.h"
#import "Utils.h"
@interface ViewController ()

@end

@implementation ViewController

@synthesize heightConstraint;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self makeColors];
    //vehicleScroll.frame = CGRectMake(0, 0, [Utils screenWidth], [Utils screenHeight]);
   
}

-(void)viewDidAppear:(BOOL)animated {
    vehicleScroll.frame = CGRectMake(0, 0, [Utils screenWidth], [Utils screenHeight]);
    vehicleScroll.contentSize = CGSizeMake(7*[Utils screenWidth], [Utils screenHeight]);
    
    for (int i = 1; i < 8; i++) {
        UIImageView * carN = [[UIImageView alloc] initWithFrame:CGRectMake((i-1)* [Utils screenWidth], 0, [Utils screenWidth], [Utils screenHeight])];
        NSString * index = [NSString stringWithFormat:@"%d", i];
        NSString *name = [[@"chassi_0" stringByAppendingString:index] stringByAppendingString:@"_com_roda.png"];
        [carN setImage:[UIImage imageNamed:name]];
        [vehicleScroll addSubview:carN];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

-(IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)makeColors {
    float colorBlockHeight = 100;
    if ([Utils screenHeight] == 768) {
        colorBlockHeight = 100;
    } else {
        colorBlockHeight = 60;
    }
    for (int i = 0; i < 48; i++) {
        UIButton *colorButton = [UIButton buttonWithType:UIButtonTypeCustom];
        colorButton.tag = i;
        [colorButton addTarget:self action:@selector(paint:) forControlEvents:UIControlEventTouchUpInside];
        colorButton.frame = CGRectMake(i*colorBlockHeight, 0, colorBlockHeight, colorBlockHeight);
        [colorButton setBackgroundColor:[self colorWithIndex:i]];
        [colorScroll addSubview:colorButton];
    }
    colorScroll.contentSize = CGSizeMake(48*colorBlockHeight, colorBlockHeight);
    heightConstraint.constant = colorBlockHeight;
}

-(UIColor *)colorWithIndex:(int)i {
    if (i == 0) {
        return [UIColor colorWithRed:128/255.0f green:0/255.0f blue:0/255.0f alpha:1];
    } else if (i == 1) {
        return [UIColor colorWithRed:128/255.0f green:64/255.0f blue:0/255.0f alpha:1];
    } else if (i == 2) {
        return [UIColor colorWithRed:255/255.0f green:0/255.0f blue:0/255.0f alpha:1];
    } else if (i == 3) {
        return [UIColor colorWithRed:255/255.0f green:128/255.0f blue:0/255.0f alpha:1];
    } else if (i == 4) {
        return [UIColor colorWithRed:255/255.0f green:102/255.0f blue:102/255.0f alpha:1];
    } else if (i == 5) {
        return [UIColor colorWithRed:255/255.0f green:204/255.0f blue:102/255.0f alpha:1];
    } else if (i == 6) {
        return [UIColor colorWithRed:128/255.0f green:128/255.0f blue:0/255.0f alpha:1];
    } else if (i == 7) {
        return [UIColor colorWithRed:64/255.0f green:128/255.0f blue:0/255.0f alpha:1];
    } else if (i == 8) {
        return [UIColor colorWithRed:255/255.0f green:255/255.0f blue:0/255.0f alpha:1];
    } else if (i == 9) {
        return [UIColor colorWithRed:128/255.0f green:255/255.0f blue:0/255.0f alpha:1];
    } else if (i == 10) {
        return [UIColor colorWithRed:255/255.0f green:255/255.0f blue:102/255.0f alpha:1];
    } else if (i == 11) {
        return [UIColor colorWithRed:204/255.0f green:255/255.0f blue:102/255.0f alpha:1];
    } else if (i == 12) {
        return [UIColor colorWithRed:0/255.0f green:128/255.0f blue:0/255.0f alpha:1];
    } else if (i == 13) {
        return [UIColor colorWithRed:0/255.0f green:128/255.0f blue:64/255.0f alpha:1];
    } else if (i == 14) {
        return [UIColor colorWithRed:0/255.0f green:255/255.0f blue:0/255.0f alpha:1];
    } else if (i == 15) {
        return [UIColor colorWithRed:0/255.0f green:255/255.0f blue:128/255.0f alpha:1];
    } else if (i == 16) {
        return [UIColor colorWithRed:102/255.0f green:255/255.0f blue:102/255.0f alpha:1];
    } else if (i == 17) {
        return [UIColor colorWithRed:102/255.0f green:255/255.0f blue:204/255.0f alpha:1];
    } else if (i == 18) {
        return [UIColor colorWithRed:0/255.0f green:128/255.0f blue:128/255.0f alpha:1];
    } else if (i == 19) {
        return [UIColor colorWithRed:0/255.0f green:64/255.0f blue:128/255.0f alpha:1];
    } else if (i == 20) {
        return [UIColor colorWithRed:0/255.0f green:255/255.0f blue:255/255.0f alpha:1];
    } else if (i == 21) {
        return [UIColor colorWithRed:0/255.0f green:128/255.0f blue:255/255.0f alpha:1];
    } else if (i == 22) {
        return [UIColor colorWithRed:102/255.0f green:255/255.0f blue:255/255.0f alpha:1];
    } else if (i == 23) {
        return [UIColor colorWithRed:102/255.0f green:204/255.0f blue:255/255.0f alpha:1];
    } else if (i == 24) {
        return [UIColor colorWithRed:0/255.0f green:0/255.0f blue:128/255.0f alpha:1];
    } /*else if (i == 25) {
        return [UIColor colorWithRed:0/255.0f green:0/255.0f blue:128/255.0f alpha:1];
    } */else if (i == 25) {
        return [UIColor colorWithRed:64/255.0f green:0/255.0f blue:128/255.0f alpha:1];
    } else if (i == 26) {
        return [UIColor colorWithRed:0/255.0f green:0/255.0f blue:255/255.0f alpha:1];
    } else if (i == 27) {
        return [UIColor colorWithRed:128/255.0f green:0/255.0f blue:255/255.0f alpha:1];
    } else if (i == 28) {
        return [UIColor colorWithRed:102/255.0f green:102/255.0f blue:255/255.0f alpha:1];
    } else if (i == 29) {
        return [UIColor colorWithRed:204/255.0f green:102/255.0f blue:255/255.0f alpha:1];
    } else if (i == 30) {
        return [UIColor colorWithRed:128/255.0f green:0/255.0f blue:128/255.0f alpha:1];
    } else if (i == 31) {
        return [UIColor colorWithRed:128/255.0f green:0/255.0f blue:64/255.0f alpha:1];
    } else if (i == 32) {
        return [UIColor colorWithRed:255/255.0f green:0/255.0f blue:255/255.0f alpha:1];
    } else if (i == 33) {
        return [UIColor colorWithRed:255/255.0f green:0/255.0f blue:128/255.0f alpha:1];
    } else if (i == 34) {
        return [UIColor colorWithRed:255/255.0f green:102/255.0f blue:255/255.0f alpha:1];
    } else if (i == 35) {
        return [UIColor colorWithRed:255/255.0f green:111/255.0f blue:207/255.0f alpha:1];
    } else if (i == 36) {
        return [UIColor colorWithRed:127/255.0f green:127/255.0f blue:127/255.0f alpha:1];
    } else if (i == 37) {
        return [UIColor colorWithRed:102/255.0f green:102/255.0f blue:102/255.0f alpha:1];
    } else if (i == 38) {
        return [UIColor colorWithRed:76/255.0f green:76/255.0f blue:76/255.0f alpha:1];
    } else if (i == 39) {
        return [UIColor colorWithRed:51/255.0f green:51/255.0f blue:51/255.0f alpha:1];
    } else if (i == 40) {
        return [UIColor colorWithRed:25/255.0f green:25/255.0f blue:25/255.0f alpha:1];
    } else if (i == 41) {
        return [UIColor colorWithRed:0/255.0f green:0/255.0f blue:0/255.0f alpha:1];
    } else if (i == 42) {
        return [UIColor colorWithRed:128/255.0f green:128/255.0f blue:128/255.0f alpha:1];
    } else if (i == 43) {
        return [UIColor colorWithRed:153/255.0f green:153/255.0f blue:153/255.0f alpha:1];
    } else if (i == 44) {
        return [UIColor colorWithRed:179/255.0f green:179/255.0f blue:179/255.0f alpha:1];
    } else if (i == 45) {
        return [UIColor colorWithRed:204/255.0f green:204/255.0f blue:204/255.0f alpha:1];
    } else if (i == 46) {
        return [UIColor colorWithRed:230/255.0f green:230/255.0f blue:230/255.0f alpha:1];
    } else if (i == 47) {
        return [UIColor colorWithRed:255/255.0f green:255/255.0f blue:255/255.0f alpha:1];
    } else {
        return  [UIColor whiteColor];
    }
}

-(void)paint:(id)sender {
    self.view.backgroundColor = [self colorWithIndex:((UIButton *)sender).tag];
}
@end
