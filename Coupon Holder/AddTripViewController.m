//
//  AddTripViewController.m
//  Coupon Holder
//
//  Created by Ryan Mottley on 10/29/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import "AddTripViewController.h"

#import "DataManager.h"
#import "Trip.h"

@implementation AddTripViewController

- (IBAction)dismissModal:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)dismissModalSave:(id)sender
{
    if ([[[self storeName] text] isEqualToString:@""])
    {
        return;
    }
    
    Trip *newTrip = [[DataManager manager] newTrip];
    
    [newTrip setTripName:[[self storeName] text]];
    [newTrip setDate:[[self tripDate] date]];
    [[DataManager manager] addTrip:newTrip];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
