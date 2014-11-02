//
//  TripTableViewController.h
//  Coupon Holder
//
//  Created by Ryan Mottley on 11/1/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Trip;

@interface TripTableViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITableView *tView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *editButton;
@property (nonatomic) Trip *trip;

- (IBAction)editButtonPressed:(id)sender;
- (void)setTrip:(Trip *)trip;

@end
