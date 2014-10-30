//
//  Trip.h
//  Coupon Holder
//
//  Created by Ryan Mottley on 10/28/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Coupon;

@interface Trip : NSManagedObject

@property (nonatomic, retain) NSString * tripName;
@property (nonatomic, retain) NSNumber * index;
@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSManagedObject *trips;
@property (nonatomic, retain) NSOrderedSet *coupon;
@end

@interface Trip (CoreDataGeneratedAccessors)

- (void)insertObject:(Coupon *)value inCouponAtIndex:(NSUInteger)idx;
- (void)removeObjectFromCouponAtIndex:(NSUInteger)idx;
- (void)insertCoupon:(NSArray *)value atIndexes:(NSIndexSet *)indexes;
- (void)removeCouponAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInCouponAtIndex:(NSUInteger)idx withObject:(Coupon *)value;
- (void)replaceCouponAtIndexes:(NSIndexSet *)indexes withCoupon:(NSArray *)values;
- (void)addCouponObject:(Coupon *)value;
- (void)removeCouponObject:(Coupon *)value;
- (void)addCoupon:(NSOrderedSet *)values;
- (void)removeCoupon:(NSOrderedSet *)values;
@end
