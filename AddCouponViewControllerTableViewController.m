//
//  AddCouponViewControllerTableViewController.m
//  Coupon Holder
//
//  Created by Ryan Mottley on 10/30/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import "AddCouponViewControllerTableViewController.h"

@interface AddCouponViewControllerTableViewController ()

@end


@implementation AddCouponViewControllerTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismissModal:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)dismissModalSave:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
