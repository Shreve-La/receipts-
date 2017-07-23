//
//  AddReceiptsViewController.m
//  Receipts++
//
//  Created by swcl on 2017-07-20.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "AddReceiptsViewController.h"
#import "AppDelegate.h"
@import CoreData;


@interface AddReceiptsViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *amountField;
@property (weak, nonatomic) IBOutlet UITextView *descriptionField;
@property (weak, nonatomic) AppDelegate *appDelegate;



@end

@implementation AddReceiptsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    self.context = self.appDelegate.context;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    
    
    return cell;
}


- (IBAction)saveReceipt:(id)sender {
    if (self.amountField.text.length == 0) {
        NSLog(@"publisher name is empty");
        return;
    }
    NSManagedObjectContext *context = [self getContext];
    Publisher *publisher = [NSEntityDescription insertNewObjectForEntityForName:@"Publisher" inManagedObjectContext:context];
    publisher.name = textField.text;
    [[self appDelegate] saveContext];
    [self fetchPublisher];
}


}


- (IBAction)clearFields:(id)sender {
    //pop view controller
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
