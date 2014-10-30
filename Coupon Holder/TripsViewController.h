//
//  MasterViewController.h
//  Coupon Holder
//
//  Created by Ryan Mottley on 10/26/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface TripsViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (nonatomic, weak) IBOutlet UITableView *tView;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *editButton;

- (IBAction)editButtonPressed:(id)sender;

@end

