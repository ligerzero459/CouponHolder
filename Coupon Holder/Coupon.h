//
//  Coupon.h
//  Coupon Holder
//
//  Created by Ryan Mottley on 10/28/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Coupon : NSManagedObject

@property (nonatomic, retain) NSNumber * barcode;
@property (nonatomic, retain) NSString * imagePath;
@property (nonatomic, retain) NSString * item;
@property (nonatomic, retain) NSNumber * discount;
@property (nonatomic, retain) NSNumber * isPercentage;
@property (nonatomic, retain) NSManagedObject *trip;

@end
