//
//  AddTripViewController.h
//  Coupon Holder
//
//  Created by Ryan Mottley on 10/29/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AddTripViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UITextField *storeName;
@property (weak, nonatomic) IBOutlet UIDatePicker *tripDate;


//*****************************************
//                 Methods
//*****************************************

- (IBAction)dismissModal:(id)sender;
- (IBAction)dismissModalSave:(id)sender;

@end
