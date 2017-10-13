//
//  SecondViewController.m
//  iOS-Gestures
//
//  Created by Mar Koss on 2017-10-12.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (nonatomic) UIView *orangeView;

@end

@implementation SecondViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width = 100;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds)-(width/2), (CGRectGetMidY(self.view.bounds)), width, height);
    
    self.orangeView = [[UIView alloc] initWithFrame:CGRectZero];
    self.orangeView.frame = frame;
    self.orangeView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.orangeView];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapStuff:)];
    [self.orangeView addGestureRecognizer:tapGesture];
}

-(void)tapStuff:(UITapGestureRecognizer* )tapStuff {
    
    // ternary expression
    UIColor *color = [self.orangeView.backgroundColor isEqual: [UIColor purpleColor]] ? [UIColor orangeColor] : [UIColor purpleColor];
    self.orangeView.backgroundColor = color;
    
//    // ternary expression is logically the same as this
//    UIColor *color;
//    if ([tapStuff.view.backgroundColor isEqual: otherColor]) {
//        color = [UIColor orangeColor];
//    } else {
//        color = [UIColor purpleColor];
//    }

    
}

@end
