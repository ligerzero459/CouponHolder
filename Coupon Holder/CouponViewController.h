//
//  DetailViewController.h
//  Coupon Holder
//
//  Created by Ryan Mottley on 10/26/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CouponViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

