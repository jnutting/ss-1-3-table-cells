//
//  TBTMasterViewController.m
//  TableCells
//
//  Created by JN on 2014-6-17.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

#import "TBTMasterViewController.h"

#import "TBTDetailViewController.h"

#import "TBTPerson.h"

@interface TBTMasterViewController ()

@property (copy, nonatomic) NSArray *people;

@end

@implementation TBTMasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self getResources];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.people.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TBTPerson *person = self.people[indexPath.row];

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"
                                                            forIndexPath:indexPath];

    NSString *name = [NSString stringWithFormat:@"%@ %@", person.firstName, person.lastName];
    cell.textLabel.text = name;
    cell.detailTextLabel.text = person.country;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDate *object = self.people[indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
    }
}

#pragma mark Internals

- (void)getResources {
    self.people = [TBTPerson somePeople];
}
@end
