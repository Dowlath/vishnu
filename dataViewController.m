//
//  dataViewController.m
//  practice1
//
//  Created by BSA Univ15 on 27/05/14.
//  Copyright (c) 2014 BSA Univ15. All rights reserved.
//

#import "dataViewController.h"

@interface dataViewController ()
{
    Contacts *c1;
    AppDelegate *delobj;
}
@end

@implementation dataViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [_view1 setHidden:YES];
    
    [self fetch];
    [self.tableinfo reloadData];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ok:(id)sender {
    AppDelegate *appDelegate =
    [[UIApplication sharedApplication] delegate];
    
    NSManagedObjectContext *context =
    [appDelegate managedObjectContext];
    NSManagedObject *newContact;
    newContact = [NSEntityDescription
                  insertNewObjectForEntityForName:@"Contacts"
                  inManagedObjectContext:context];
    [newContact setValue:_firstname.text forKey:@"firstname"];
    [newContact setValue:_lastname.text forKey:@"lastname"];
    [newContact setValue: _phone.text forKey:@"phone"];
    _firstname.text = @"";
    _lastname.text = @"";
    _phone.text = @"";
    [self.tableinfo reloadData];
    NSError *error;
    [context save:&error];
}

- (IBAction)cancel:(id)sender {
    [_view1 setHidden:YES];
    
}
- (IBAction)pop:(id)sender {
    [_view1 setHidden:NO];
}
-(void)fetch
{
    delobj=[[UIApplication sharedApplication]delegate];
    self.fetchingarray=[delobj getallcontacts];
    NSLog(@"%@",[self.fetchingarray description]);
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [_fetchingarray count];
}


 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
 {
     static NSString *cellidentifier=@"cell";
     UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellidentifier ];
                              
    if(cell==nil)
                              {
                                  cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellidentifier];
                              }
        c1=[self.fetchingarray objectAtIndex:indexPath.row];
     
        cell.textLabel.text=[NSString stringWithFormat:@"%@%@%@",c1.firstname,c1.lastname,c1.phone];
     cell.detailTextLabel.text=[NSString stringWithFormat:@"%@",c1.phone];
 
 // Configure the cell...
 
 return cell;
 }

@end
