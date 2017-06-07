//
//  ViewController.m
//  CGAffineTransformDemo
//
//  Created by SoulJa on 2017/6/7.
//  Copyright © 2017年 com.soulja. All rights reserved.
//

#import "ViewController.h"

static float const kAnimationDuration = 2.0;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;


- (IBAction)rotation:(id)sender;
- (IBAction)scale:(id)sender;
- (IBAction)translate:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)rotation:(id)sender {
    [UIView animateWithDuration:kAnimationDuration animations:^{
//        _imageView.transform = CGAffineTransformMakeRotation(M_PI_4);
        _imageView.transform = CGAffineTransformRotate(_imageView.transform, M_PI_4);
    }];
}

- (IBAction)scale:(id)sender {
    [UIView animateWithDuration:kAnimationDuration animations:^{
//        _imageView.transform = CGAffineTransformMakeScale(0.8, 0.8);
        _imageView.transform = CGAffineTransformScale(_imageView.transform, 0.8,0.8);
    }];
}

- (IBAction)translate:(id)sender {
    [UIView animateWithDuration:kAnimationDuration animations:^{
//        _imageView.transform = CGAffineTransformMakeTranslation(0, 30);
        _imageView.transform = CGAffineTransformTranslate(_imageView.transform, 0, 30);
    }];
}
@end
