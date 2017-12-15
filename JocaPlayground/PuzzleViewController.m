//
//  PuzzleViewController.m
//  JocaPlayground
//
//  Created by Christian Coimbra on 18/08/15.
//  Copyright (c) 2015 Spacecat Studio. All rights reserved.
//

#import "PuzzleViewController.h"
#import "Utils.h"
@interface PuzzleViewController ()

@end

@implementation PuzzleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //leftScroll.contentSize = CGSizeMake(340, 5376);
    //middleScroll.contentSize = CGSizeMake(340, 5376);
    //rightScroll.contentSize = CGSizeMake(340, 5376);
    
    
    /*
    UIImage* car1 = [UIImage imageNamed:@"chassi_01_com_roda.png"];
    CGRect car1_left = CGRectMake(2, 0, 340, 768);
    CGImageRef imageRef = CGImageCreateWithImageInRect([car1 CGImage], car1_left);
    UIImage* subImage = [UIImage imageWithCGImage: imageRef];
    UIImageView *car1_left_view = [[UIImageView alloc] initWithImage:subImage];
    car1_left_view.frame = CGRectMake(0, 0, 340, 768);
    UIView *coloredViewLeft1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 340, 768)];
    coloredViewLeft1.backgroundColor = [UIColor blueColor];
    [leftScroll addSubview:coloredViewLeft1];
    [leftScroll addSubview:car1_left_view];
    CGRect car1_mid = CGRectMake(342, 0, 340, 768);
    imageRef = CGImageCreateWithImageInRect([car1 CGImage], car1_mid);
    subImage = [UIImage imageWithCGImage: imageRef];
    UIImageView *car1_mid_view = [[UIImageView alloc] initWithImage:subImage];
    car1_mid_view.frame = CGRectMake(0, 0, 340, 768);
    UIView *coloredViewMid1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 340, 768)];
    coloredViewMid1.backgroundColor = [UIColor blueColor];
    [middleScroll addSubview:coloredViewMid1];
    [middleScroll addSubview:car1_mid_view];
    CGRect car1_right = CGRectMake(682, 0, 340, 768);
    imageRef = CGImageCreateWithImageInRect([car1 CGImage], car1_right);
    subImage = [UIImage imageWithCGImage: imageRef];
    UIImageView *car1_right_view = [[UIImageView alloc] initWithImage:subImage];
    car1_right_view.frame = CGRectMake(0, 0, 340, 768);
    UIView *coloredViewRight1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 340, 768)];
    coloredViewRight1.backgroundColor = [UIColor blueColor];
    [rightScroll addSubview:coloredViewRight1];
    [rightScroll addSubview:car1_right_view];
    
    UIImage* car2 = [UIImage imageNamed:@"chassi_02_com_roda.png"];
    CGRect car2_left = CGRectMake(2, 0, 340, 768);
    imageRef = CGImageCreateWithImageInRect([car2 CGImage], car2_left);
    subImage = [UIImage imageWithCGImage: imageRef];
    UIImageView *car2_left_view = [[UIImageView alloc] initWithImage:subImage];
    car2_left_view.frame = CGRectMake(0, 768, 340, 768);
    UIView *coloredViewLeft2 = [[UIView alloc] initWithFrame:CGRectMake(0, 768, 340, 768)];
    coloredViewLeft2.backgroundColor = [UIColor redColor];
    [leftScroll addSubview:coloredViewLeft2];
    [leftScroll addSubview:car2_left_view];
    CGRect car2_mid = CGRectMake(342, 0, 340, 768);
    imageRef = CGImageCreateWithImageInRect([car2 CGImage], car2_mid);
    subImage = [UIImage imageWithCGImage: imageRef];
    UIImageView *car2_mid_view = [[UIImageView alloc] initWithImage:subImage];
    car2_mid_view.frame = CGRectMake(0, 768, 340, 768);
    UIView *coloredViewMid2 = [[UIView alloc] initWithFrame:CGRectMake(0, 768, 340, 768)];
    coloredViewMid2.backgroundColor = [UIColor redColor];
    [middleScroll addSubview:coloredViewMid2];
    [middleScroll addSubview:car2_mid_view];
    CGRect car2_right = CGRectMake(682, 0, 340, 768);
    imageRef = CGImageCreateWithImageInRect([car2 CGImage], car2_right);
    subImage = [UIImage imageWithCGImage: imageRef];
    UIImageView *car2_right_view = [[UIImageView alloc] initWithImage:subImage];
    car2_right_view.frame = CGRectMake(0, 768, 340, 768);
    UIView *coloredViewRight2 = [[UIView alloc] initWithFrame:CGRectMake(0, 768, 340, 768)];
    coloredViewRight2.backgroundColor = [UIColor redColor];
    [rightScroll addSubview:coloredViewRight2];
    [rightScroll addSubview:car2_right_view];
    
    UIImage* car3 = [UIImage imageNamed:@"chassi_03_com_roda.png"];
    CGRect car3_left = CGRectMake(2, 0, 340, 768);
    imageRef = CGImageCreateWithImageInRect([car3 CGImage], car3_left);
    subImage = [UIImage imageWithCGImage: imageRef];
    UIImageView *car3_left_view = [[UIImageView alloc] initWithImage:subImage];
    car3_left_view.frame = CGRectMake(0, 1536, 340, 768);
    UIView *coloredViewLeft3 = [[UIView alloc] initWithFrame:CGRectMake(0, 1536, 340, 768)];
    coloredViewLeft3.backgroundColor = [UIColor greenColor];
    [leftScroll addSubview:coloredViewLeft3];
    [leftScroll addSubview:car3_left_view];
    CGRect car3_mid = CGRectMake(342, 0, 340, 768);
    imageRef = CGImageCreateWithImageInRect([car3 CGImage], car3_mid);
    subImage = [UIImage imageWithCGImage: imageRef];
    UIImageView *car3_mid_view = [[UIImageView alloc] initWithImage:subImage];
    car3_mid_view.frame = CGRectMake(0, 1536, 340, 768);
    UIView *coloredViewMid3 = [[UIView alloc] initWithFrame:CGRectMake(0, 1536, 340, 768)];
    coloredViewMid3.backgroundColor = [UIColor greenColor];
    [middleScroll addSubview:coloredViewMid3];
    [middleScroll addSubview:car3_mid_view];
    CGRect car3_right = CGRectMake(682, 0, 340, 768);
    imageRef = CGImageCreateWithImageInRect([car3 CGImage], car3_right);
    subImage = [UIImage imageWithCGImage: imageRef];
    UIImageView *car3_right_view = [[UIImageView alloc] initWithImage:subImage];
    car3_right_view.frame = CGRectMake(0, 1536, 340, 768);
    UIView *coloredViewRight3 = [[UIView alloc] initWithFrame:CGRectMake(0, 1536, 340, 768)];
    coloredViewRight3.backgroundColor = [UIColor greenColor];
    [rightScroll addSubview:coloredViewRight3];
    [rightScroll addSubview:car3_right_view];

    UIImage* car4 = [UIImage imageNamed:@"chassi_04_com_roda.png"];
    CGRect car4_left = CGRectMake(2, 0, 340, 768);
    imageRef = CGImageCreateWithImageInRect([car4 CGImage], car4_left);
    subImage = [UIImage imageWithCGImage: imageRef];
    UIImageView *car4_left_view = [[UIImageView alloc] initWithImage:subImage];
    car4_left_view.frame = CGRectMake(0, 2304, 340, 768);
    UIView *coloredViewLeft4 = [[UIView alloc] initWithFrame:CGRectMake(0, 2304, 340, 768)];
    coloredViewLeft4.backgroundColor = [UIColor yellowColor];
    [leftScroll addSubview:coloredViewLeft4];
    [leftScroll addSubview:car4_left_view];
    CGRect car4_mid = CGRectMake(342, 0, 340, 768);
    imageRef = CGImageCreateWithImageInRect([car4 CGImage], car4_mid);
    subImage = [UIImage imageWithCGImage: imageRef];
    UIImageView *car4_mid_view = [[UIImageView alloc] initWithImage:subImage];
    car4_mid_view.frame = CGRectMake(0, 2304, 340, 768);
    UIView *coloredViewMid4 = [[UIView alloc] initWithFrame:CGRectMake(0, 2304, 340, 768)];
    coloredViewMid4.backgroundColor = [UIColor yellowColor];
    [middleScroll addSubview:coloredViewMid4];
    [middleScroll addSubview:car4_mid_view];
    CGRect car4_right = CGRectMake(682, 0, 340, 768);
    imageRef = CGImageCreateWithImageInRect([car4 CGImage], car4_right);
    subImage = [UIImage imageWithCGImage: imageRef];
    UIImageView *car4_right_view = [[UIImageView alloc] initWithImage:subImage];
    car4_right_view.frame = CGRectMake(0, 2304, 340, 768);
    UIView *coloredViewRight4 = [[UIView alloc] initWithFrame:CGRectMake(0, 2304, 340, 768)];
    coloredViewRight4.backgroundColor = [UIColor yellowColor];
    [rightScroll addSubview:coloredViewRight4];
    [rightScroll addSubview:car4_right_view];
    */
}

-(void)viewDidAppear:(BOOL)animated {
    //leftScroll.frame = CGRectMake(2, 0, [Utils screenWidth]/3 - 4, [Utils screenHeight]);
    //middleScroll.frame = CGRectMake(2, 0, [Utils screenWidth]/3 - 4, [Utils screenHeight]);
    //-rightScroll.frame = CGRectMake(2, 0, [Utils screenWidth]/3 - 4, [Utils screenHeight]);
    leftScroll.contentSize = CGSizeMake(([Utils screenWidth] - 4)/3, [Utils screenHeight] * 7);
    middleScroll.contentSize = CGSizeMake(([Utils screenWidth] - 4)/3, [Utils screenHeight] * 7);
    rightScroll.contentSize = CGSizeMake(([Utils screenWidth] - 4)/3, [Utils screenHeight] * 7);
    
    int chassi_count = 7;
    for (int i = 0; i < chassi_count; i++) {
        NSString * index = [NSString stringWithFormat:@"%d", i+1];
        NSString *name = [[@"chassi_0" stringByAppendingString:index] stringByAppendingString:@"_com_roda.png"];
        NSLog(@"Loading image named = %@", name);
        UIImage* car1 = [UIImage imageNamed:name];
        CGRect car1_left = CGRectMake(2, 0, 340, 768);
        CGImageRef imageRef = CGImageCreateWithImageInRect([car1 CGImage], car1_left);
        UIImage* subImage = [UIImage imageWithCGImage: imageRef];
        UIImageView *car1_left_view = [[UIImageView alloc] initWithImage:subImage];
        car1_left_view.frame = CGRectMake(0, i* [Utils screenHeight], ([Utils screenWidth] - 4)/3, [Utils screenHeight]);
        UIView *coloredViewLeft1 = [[UIView alloc] initWithFrame:CGRectMake(0, i*[Utils screenHeight], ([Utils screenWidth] - 4)/3, [Utils screenHeight])];
        coloredViewLeft1.backgroundColor = [self colorForIndex:i];
        car1_left_view.contentMode = UIViewContentModeScaleToFill;
        [leftScroll addSubview:coloredViewLeft1];
        [leftScroll addSubview:car1_left_view];
        CGRect car1_mid = CGRectMake(342, 0, 340, 768);
        imageRef = CGImageCreateWithImageInRect([car1 CGImage], car1_mid);
        subImage = [UIImage imageWithCGImage: imageRef];
        UIImageView *car1_mid_view = [[UIImageView alloc] initWithImage:subImage];
        car1_mid_view.frame = CGRectMake(0, i*[Utils screenHeight], ([Utils screenWidth] - 4)/3, [Utils screenHeight]);
        UIView *coloredViewMid1 = [[UIView alloc] initWithFrame:CGRectMake(0, i*[Utils screenHeight], ([Utils screenWidth] - 4)/3, [Utils screenHeight])];
        coloredViewMid1.backgroundColor = [self colorForIndex:i];
        car1_mid_view.contentMode = UIViewContentModeScaleToFill;
        [middleScroll addSubview:coloredViewMid1];
        [middleScroll addSubview:car1_mid_view];
        CGRect car1_right = CGRectMake(682, 0, 340, 768);
        imageRef = CGImageCreateWithImageInRect([car1 CGImage], car1_right);
        subImage = [UIImage imageWithCGImage: imageRef];
        UIImageView *car1_right_view = [[UIImageView alloc] initWithImage:subImage];
        car1_right_view.frame = CGRectMake(0, i*[Utils screenHeight], ([Utils screenWidth] - 4)/3, [Utils screenHeight]);
        UIView *coloredViewRight1 = [[UIView alloc] initWithFrame:CGRectMake(0, i*[Utils screenHeight], ([Utils screenWidth] - 4)/3, [Utils screenHeight])];
        coloredViewRight1.backgroundColor = [self colorForIndex:i];
        car1_right_view.contentMode = UIViewContentModeScaleToFill;
        [rightScroll addSubview:coloredViewRight1];
        [rightScroll addSubview:car1_right_view];
    }
}

-(UIColor *)colorForIndex:(int)index {
    if (index == 0) {
        return [UIColor greenColor];
    } else if (index == 1) {
        return [UIColor redColor];
    } else if (index == 2) {
        return [UIColor blueColor];
    } else if (index == 3) {
        return [UIColor yellowColor];
    } else if (index == 4) {
        return [UIColor colorWithRed:128/255.0f green:64/255.0f blue:0/255.0f alpha:1];
    } else if (index == 5) {
        return [UIColor colorWithRed:0/255.0f green:0/255.0f blue:128/255.0f alpha:1];
    } else if (index == 6) {
        return [UIColor colorWithRed:128/255.0f green:0/255.0f blue:64/255.0f alpha:1];
    } else {
        return [UIColor whiteColor];
    }
}

-(IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
