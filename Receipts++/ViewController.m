//
//  ViewController.m
//  Receipts++
//
//  Created by swcl on 2017-07-20.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSArray *tags;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
// fetch tags and assign to tags array;
//    NSArray fetchedTags =
//    self.tags = [[NSArray alloc] initWithArray:fetchedTags];
//    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//fetch number of tags
return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    NSString *result = [sectionTitles objectAtIndex:section];
    //....
    return result;
}

@end
