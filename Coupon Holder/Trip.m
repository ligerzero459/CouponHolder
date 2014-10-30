//
//  Trip.m
//  Coupon Holder
//
//  Created by Ryan Mottley on 10/28/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import "Trip.h"
#import "Coupon.h"


@implementation Trip

@dynamic tripName;
@dynamic index;
@dynamic date;
@dynamic trips;
@dynamic coupon;

- (void)addCouponObject:(Coupon *)value
{
    NSMutableOrderedSet* tempSet = [NSMutableOrderedSet orderedSetWithOrderedSet:self.coupon];
    [tempSet addObject:value];
    self.coupon = tempSet;
}

@end
