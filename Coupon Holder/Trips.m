//
//  Trips.m
//  Coupon Holder
//
//  Created by Ryan Mottley on 10/28/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import "Trips.h"
#import "Trip.h"


@implementation Trips

@dynamic index;
@dynamic trip;

- (void)addTripObject:(Trip *)value
{
    if ([self.trip containsObject:value]) {
        return;
    }
    
    NSMutableOrderedSet* tempSet = [NSMutableOrderedSet orderedSetWithOrderedSet:self.trip];
    [tempSet addObject:value];
    self.trip = tempSet;
}

- (void)removeTripObject:(Trip *)value
{
    if (![self.trip containsObject:value]) {
        return;
    }
    
    NSMutableOrderedSet *tempSet = [NSMutableOrderedSet orderedSetWithOrderedSet:self.trip];
    [tempSet removeObject:value];
    self.trip = tempSet;
}

@end
