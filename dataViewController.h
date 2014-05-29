//
//  dataViewController.h
//  practice1
//
//  Created by BSA Univ15 on 27/05/14.
//  Copyright (c) 2014 BSA Univ15. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Contacts.h"

@interface dataViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITextField *firstname;
@property (strong, nonatomic) IBOutlet UITextField *lastname;
@property (strong, nonatomic) IBOutlet UITextField *phone;
- (IBAction)ok:(id)sender;
- (IBAction)cancel:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *view1;
- (IBAction)pop:(id)sender;
@property(strong,nonatomic)NSArray *fetchingarray;
@property (strong, nonatomic) IBOutlet UITableView *tableinfo;

@end
