//
//  MainViewController.m
//  ScreenRotation2
//
//  Created by rw on 2016/03/18.
//  Copyright © 2016年 覗文君. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController


-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAllButUpsideDown;
}
- (BOOL)shouldAutorotate
{
    return YES;
}
-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    
    return   UIInterfaceOrientationPortrait;
    
}

- (void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    if (UIInterfaceOrientationIsPortrait(toInterfaceOrientation)) {
        [_blueView setFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), 200)];
    }
    else {
        [_blueView setFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
