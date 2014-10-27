//
//  MasterViewController.h
//  Coupon Holder
//
//  Created by Ryan Mottley on 10/26/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;


@end

