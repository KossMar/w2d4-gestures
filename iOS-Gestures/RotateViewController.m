//
//  RotateViewController.m
//  iOS-Gestures
//
//  Created by Mar Koss on 2017-10-12.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import "RotateViewController.h"

@interface RotateViewController ()

@property (nonatomic) UIView *view1;

@end

@implementation RotateViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = 100;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
    
    UIView *view1 = [[UIView alloc] initWithFrame:frame];
    view1.backgroundColor = [UIColor blackColor];
    [self.view addSubview:view1];
    
    UIRotationGestureRecognizer *rotationGesture = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(viewRotated:)];
    [view1 addGestureRecognizer:rotationGesture];
}


-(void)viewRotated: (UIRotationGestureRecognizer*)sender {

    
    sender.view.transform = CGAffineTransformRotate(sender.view.transform, sender.rotation);
    sender.rotation =0;
    
//    CGFloat rotations = sender.rotation;
//    UIView *rotatedImage = sender.view;
//    UIView *previousTransform = rotatedImage.transform;
//    rotatedImage.transform = CGAffineTransformRotate(previousTransform, rotations);
//    sender.rotation = 0;
    
//    switch (sender.state) {
//        case UIGestureRecognizerStateChanged: {
//
//
//            break;
//        }
//        default:
//            break;
//    }
    
    //    if (gestureRecognizer.state == .began) {
//        let view = sender.view
//        let locationInView = sender.location(in: view)
//        let locationInSuperview = sender.location(in: view?.superview)
//
//        // Move the anchor point to the touch point and change the position of the view
//        view?.layer.anchorPoint = CGPoint(x: (locationInView.x / (view?.bounds.size.width)!),
//                                          y: (locationInView.y / (view?.bounds.size.height)!))
//        view?.center = locationInSuperview
//    }
//
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
