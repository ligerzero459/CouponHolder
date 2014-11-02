//
//  MasterViewController.m
//  Coupon Holder
//
//  Created by Ryan Mottley on 10/26/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import "TripsViewController.h"
#import "TripTableViewController.h"

#import "DataManager.h"

#import "Trips.h"
#import "Trip.h"

@interface TripsViewController ()

@end

@implementation TripsViewController
{
    NSArray *allTrips;
}

@synthesize tView, editButton;

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [tView reloadData];
}

- (void)viewWillAppear:(BOOL)animated
{
    allTrips = [[DataManager manager] getTrip];
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"couponsSegue"]) {
        TripTableViewController *ttvc = segue.destinationViewController;
        
        NSIndexPath *indexPath = [tView indexPathForSelectedRow];
        
        [ttvc setTrip:[allTrips objectAtIndex:[indexPath row]]];
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[DataManager manager] getTrip] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    Trip *trip = [allTrips objectAtIndex:[indexPath row]];\
    
    [[cell textLabel] setText:[trip tripName]];
    
    NSString *dateString = [NSDateFormatter localizedStringFromDate:[trip date] dateStyle:NSDateFormatterMediumStyle timeStyle:NSDateFormatterNoStyle];
    [[cell detailTextLabel] setText:dateString];
    
    return cell;
}

//- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
//    // Return NO if you do not want the specified item to be editable.
//    return NO;
//}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [tableView beginUpdates];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
        [[DataManager manager] removeTrip:[allTrips objectAtIndex:[indexPath row]]];
        allTrips = [[DataManager manager] getTrip];
        
        [tableView endUpdates];

    }
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    NSManagedObject *object = [self.fetchedResultsController objectAtIndexPath:indexPath];
    cell.textLabel.text = [[object valueForKey:@"timeStamp"] description];
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([tView isEditing])
    {
        return NO;
    }
    else return YES;
}

//*****************************************
//             Editing Methods
//*****************************************

//- (void)tableView:(UITableView *)tableView willBeginEditingRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    [editButton setTitle:@"Done"];
//    [editButton setStyle:UIBarButtonItemStyleDone];
//}
//
//- (void)tableView:(UITableView *)tableView didEndEditingRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    [editButton setTitle:@"Edit"];
//    [editButton setStyle:UIBarButtonItemStyleBordered];
//}

- (IBAction)editButtonPressed:(id)sender {
    if ([tView isEditing])
    {
//        [editButton setTitle:@"Edit"];
        editButton.title = @"Edit";
        [editButton setStyle:UIBarButtonItemStyleBordered];
        [tView setEditing:NO animated:YES];
    }
    else
    {
//        [editButton setTitle:@"Done"];
        editButton.title = @"Done";
        [editButton setStyle:UIBarButtonItemStyleDone];
        [tView setEditing:YES animated:YES];
    }
}

@end
