//
//  EntriesListTableViewController.m
//  Journal_ObjC
//
//  Created by Dustin Koch on 5/20/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

#import "EntriesListTableViewController.h"
#import "DHKEntryController.h"
#import "EntryDetailViewController.h"

@interface EntriesListTableViewController ()

@end

@implementation EntriesListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear: true];
    [self.tableView reloadData];
}
#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[DHKEntryController sharedController] entries] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    DHKEntry *entry = [[[DHKEntryController sharedController] entries] objectAtIndex:indexPath.row];
    cell.textLabel.text = [entry title];
    cell.detailTextLabel.text = [entry bodyText];
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        ///Delete entry
        DHKEntry *entry = [[[DHKEntryController sharedController] entries] objectAtIndex:indexPath.row];
        [[DHKEntryController sharedController] deleteEntry:entry];
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // IIDOO
    if ([[segue identifier] isEqualToString:@"toEntryDetailView"]){
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        EntryDetailViewController *destinationVC = [segue destinationViewController];
        DHKEntry *entry = [[[DHKEntryController sharedController] entries] objectAtIndex:indexPath.row];
        destinationVC.entry = entry;
    }
}//END OF SEGUE

@end
