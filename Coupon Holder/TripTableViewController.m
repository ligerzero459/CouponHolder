//
//  TripTableViewController.m
//  Coupon Holder
//
//  Created by Ryan Mottley on 11/1/14.
//  Copyright (c) 2014 Kai Strife Productions. All rights reserved.
//

#import "TripTableViewController.h"

#import "DataManager.h"
#import "Trip.h"
#import "Coupon.h"

@interface TripTableViewController ()

@end

@implementation TripTableViewController

@synthesize tView, editButton, trip;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [[[DataManager manager] getCoupons:self.trip] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"couponCell" forIndexPath:indexPath];
    
    Coupon *c = [[[DataManager manager] getCoupons:self.trip] objectAtIndex:[indexPath row]];
    
    if ([c isPercentage]) {
        NSString *title = [NSString stringWithFormat:@"%d%% Off %@", [[c discount] intValue], [c item]];
    } else {
        NSString *title = [NSString stringWithFormat:@"$%d Off %@", [[c discount] intValue], [c item]];
    }
    
    
    
    return cell;
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

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

- (void)setTrip:(Trip *)t {
    self.trip = t;
}

@end
