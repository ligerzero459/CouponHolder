//
//  CouponCameraViewController.m
//  Coupon Holder
//
//  Created by Ryan Mottley on 10/30/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import "CouponCameraViewController.h"

@interface CouponCameraViewController ()

@end

@implementation CouponCameraViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)dismissModal:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
