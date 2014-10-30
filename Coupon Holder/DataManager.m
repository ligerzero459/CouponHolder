//
//  DataManager.m
//  Coupon Holder
//
//  Created by Ryan Mottley on 10/28/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import "DataManager.h"

#import "AppDelegate.h"

@interface DataManager  ()
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

@end

@implementation DataManager
{
    AppDelegate *appDelegate;
}

+ (DataManager *)manager
{
    static DataManager *manager = nil;
    
    if (!manager)
    {
        manager = [[super allocWithZone:nil] init];
    }
    
    return manager;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self manager];
}

- (id)init
{
    self = [super init];
    
    if (self)
    {
        appDelegate = [UIApplication sharedApplication].delegate;
        self.managedObjectContext = appDelegate.managedObjectContext;
    }
    
    return self;
}

// Data retrieval

- (NSArray *)getTrips
{
    NSArray *trips = [appDelegate getData:@"Trips"];
    
    return trips;
}

- (NSArray *)getTrip:(Trips *)trips
{
    NSArray *trip = [[trips trip] array];
    
    return trip;
}

- (NSArray *)getCoupons:(Trip *)trip
{
    NSArray *coupons = [[trip coupon] array];
    
    return coupons;
}

// Data creation

- (Trips *)newTrips
{
    Trips *trips = [NSEntityDescription insertNewObjectForEntityForName:@"Trips" inManagedObjectContext:self.managedObjectContext];
    
    return trips;
}

- (Trip *)newTrip
{
    Trip *trip = [NSEntityDescription insertNewObjectForEntityForName:@"Trip" inManagedObjectContext:self.managedObjectContext];
    
    return trip;
}

- (Coupon *)newCoupon
{
    Coupon *coupon = [NSEntityDescription insertNewObjectForEntityForName:@"Coupon" inManagedObjectContext:self.managedObjectContext];
    
    return coupon;
}

- (void)addTrip:(Trip *)trip
{
    Trips *trips = [[appDelegate getData:@"Trips"] objectAtIndex:0];
    
    if (!trips)
    {
        trips = [self newTrips];
    }
    
    [trips addTripObject:trip];
    [self saveContext];
}

- (void)removeTrip:(Trip *)trip
{
    [[[appDelegate getData:@"Trips"] objectAtIndex:0] removeTripObject:trip];
    
    [self saveContext];
}

- (void)removeCoupon:(Coupon *)coupon fromTrip:(Trip *)trip
{
    [trip removeCouponObject:coupon];
    [self.managedObjectContext deleteObject:coupon];
    
    [self saveContext];
}

- (void)saveContext
{
    [appDelegate saveContext];
}

@end
