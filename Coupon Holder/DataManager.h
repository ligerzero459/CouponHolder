//
//  DataManager.h
//  Coupon Holder
//
//  Created by Ryan Mottley on 10/28/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Trips, Trip, Coupon;

@interface DataManager : NSObject

+ (DataManager *)manager;

- (NSArray *)getTrips;
- (NSArray *)getTrip:(Trips *)trips;
- (NSArray *)getCoupons:(Trip *)trip;

- (Trips *)newTrips;
- (Trip *)newTrip;
- (Coupon *)newCoupon;

- (void)addTrip:(Trip *)trip;

- (void)removeTrip:(Trip *)trip;
- (void)removeCoupon:(Coupon *)coupon fromTrip:(Trip *)trip;

- (void)saveContext;

@end
