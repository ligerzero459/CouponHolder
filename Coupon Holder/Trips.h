//
//  Trips.h
//  Coupon Holder
//
//  Created by Ryan Mottley on 10/28/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Trip;

@interface Trips : NSManagedObject

@property (nonatomic, retain) NSNumber * index;
@property (nonatomic, retain) NSOrderedSet *trip;
@end

@interface Trips (CoreDataGeneratedAccessors)

- (void)insertObject:(Trip *)value inTripAtIndex:(NSUInteger)idx;
- (void)removeObjectFromTripAtIndex:(NSUInteger)idx;
- (void)insertTrip:(NSArray *)value atIndexes:(NSIndexSet *)indexes;
- (void)removeTripAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInTripAtIndex:(NSUInteger)idx withObject:(Trip *)value;
- (void)replaceTripAtIndexes:(NSIndexSet *)indexes withTrip:(NSArray *)values;
- (void)addTripObject:(Trip *)value;
- (void)removeTripObject:(Trip *)value;
- (void)addTrip:(NSOrderedSet *)values;
- (void)removeTrip:(NSOrderedSet *)values;
@end
