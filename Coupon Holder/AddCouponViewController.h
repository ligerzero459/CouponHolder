//
//  AddCouponViewControllerTableViewController.h
//  Coupon Holder
//
//  Created by Ryan Mottley on 10/30/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddCouponViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UIImageView *couponImage;
@property (weak, nonatomic) IBOutlet UITextField *itemNameField;
@property (weak, nonatomic) IBOutlet UITextField *discountField;
@property (weak, nonatomic) IBOutlet UITextField *barcodeField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *percentControl;

@property (nonatomic) NSUInteger tripIndex;

- (IBAction)dismissModal:(id)sender;
- (IBAction)dismissModalSave:(id)sender;

@end
