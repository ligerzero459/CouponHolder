//
//  AddCouponViewControllerTableViewController.m
//  Coupon Holder
//
//  Created by Ryan Mottley on 10/30/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import "AddCouponViewController.h"

#import "DataManager.h"
#import "Trip.h"
#import "Coupon.h"

@interface AddCouponViewController ()

@end


@implementation AddCouponViewController

@synthesize couponImage, itemNameField, discountField, barcodeField,
    percentControl, tripIndex;

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
    Coupon *newCoupon = [[DataManager manager] newCoupon];
    
    [newCoupon setItem:[itemNameField text]];
    [newCoupon setDiscount:[NSNumber numberWithInteger:[[discountField text] integerValue]]];
    [newCoupon setImagePath:@""];
    
    if ([percentControl selectedSegmentIndex] == 0) {
        [newCoupon setIsPercentage:[NSNumber numberWithBool:NO]];
    } else {
        [newCoupon setIsPercentage:[NSNumber numberWithBool:YES]];
    }
    [newCoupon setBarcode:[NSNumber numberWithInteger:[[barcodeField text] integerValue]]];
    
    [[[DataManager manager] getTripAtIndex:tripIndex] addCouponObject:newCoupon];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
