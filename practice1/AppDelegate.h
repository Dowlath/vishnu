//
//  AppDelegate.h
//  practice1
//
//  Created by BSA Univ15 on 27/05/14.
//  Copyright (c) 2014 BSA Univ15. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "dataViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;
-(NSArray *)getallcontacts;

@end
