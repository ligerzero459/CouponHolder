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

- (Trips *)getTrips;
- (NSArray *)getTrip;
- (Trip *)getTripAtIndex:(NSUInteger)atIndex;
- (NSArray *)getCoupons:(Trip *)trip;
- (Coupon *)getCouponFromTrip:(Trip *)trip atIndex:(NSUInteger)index;

- (Trips *)newTrips;
- (Trip *)newTrip;
- (Coupon *)newCoupon;

- (void)addTrip:(Trip *)trip;
- (void)addCoupon:(Coupon *)coupon toTrip:(Trip *)trip;

- (void)removeTrip:(Trip *)trip;
- (void)removeCoupon:(Coupon *)coupon fromTrip:(Trip *)trip;

- (void)saveContext;

@end
