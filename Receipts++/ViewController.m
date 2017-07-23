//
//  ViewController.m
//  Receipts++
//
//  Created by swcl on 2017-07-20.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

@import CoreData;
#import "AppDelegate.h"
#import "ViewController.h"
#import "Receipt.h"
#import "TableViewCell.h"
#import "Tag+CoreDataProperties.h"
#import "Tag+CoreDataClass.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) NSArray *tags;
@property (nonatomic) NSManagedObjectContext *managedObjectContext;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    AppDelegate *appDelegate = (AppDelegate *)([UIApplication sharedApplication].delegate);
    self.managedObjectContext = appDelegate.persistentContainer.viewContext;
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSError *error = nil;
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"Tag"];
    self.tags = [self.managedObjectContext executeFetchRequest:fetchRequest
                                                             error:&error];
    if (error) {
        NSLog(@"Error: %@", error.localizedDescription);
    }
    [self.tableView reloadData];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.tags.count;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return [self.tags[section] numberOfObjects];
 
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    

    return cell;
    
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    NSString *result;// = [sectionTitles objectAtIndex:section];
    //....
    return result;
}

@end
