//
//  SwipeViewController.m
//  iOS-Gestures
//
//  Created by Mar Koss on 2017-10-12.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

@property (nonatomic) UIView *viewTop;
@property (nonatomic) UIView *viewBottom;
@property (nonatomic) BOOL state;
@property (nonatomic) CGRect startingFrame;
@property (nonatomic) CGRect shiftedFrame;


@end

@implementation SwipeViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width = 355;
    CGFloat height = 100;
    
    self.startingFrame = CGRectMake(CGRectGetMidX(self.view.bounds)-(width/2), (CGRectGetMidY(self.view.bounds)), width, height);
    self.shiftedFrame = CGRectMake(30, (CGRectGetMidY(self.view.bounds)), 250, height);
    
    
    self.viewBottom = [[UIView alloc] initWithFrame:CGRectZero];
    self.viewBottom.frame = self.startingFrame;
    self.viewBottom.backgroundColor = [UIColor brownColor];
    [self.view addSubview:self.viewBottom];
    
    self.viewTop = [[UIView alloc] initWithFrame:CGRectZero];
    self.viewTop.frame = self.startingFrame;
    self.viewTop.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.viewTop];
    
    UISwipeGestureRecognizer *swipeGestureLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeStuff:)];
    [self.viewTop addGestureRecognizer:swipeGestureLeft];
    swipeGestureLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    
    UISwipeGestureRecognizer *swipeGestureRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeStuff:)];
    [self.viewTop addGestureRecognizer:swipeGestureRight];
    swipeGestureRight.direction = UISwipeGestureRecognizerDirectionRight;
    
}

-(void)swipeStuff:(UISwipeGestureRecognizer*)sender {
    

   
    
    switch (sender.direction) {
        case UISwipeGestureRecognizerDirectionLeft: {
            [UIView animateWithDuration:0.5 animations:^{
                self.viewTop.frame = self.shiftedFrame;
            }];
            break;
        }
        case UISwipeGestureRecognizerDirectionRight:
            [UIView animateWithDuration:0.5 animations:^{
                self.viewTop.frame = self.startingFrame;
            }];
            break;

    }
    
}

@end

//                [[self.viewTop.widthAnchor constraintEqualToConstant:275] setActive:YES];
//                [[self]]
//[NSLayoutConstraint constraintWithItem:self.viewTop attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.viewBottom attribute:NSLayoutAttributeLeading multiplier:1.0 constant:1.0].active = YES;
//[[self.viewTop.widthAnchor constraintEqualToConstant:275] setActive:YES];

