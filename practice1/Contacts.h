//
//  Contacts.h
//  practice1
//
//  Created by BSA Univ15 on 27/05/14.
//  Copyright (c) 2014 BSA Univ15. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Contacts : NSManagedObject

@property (nonatomic, retain) NSString * firstname;
@property (nonatomic, retain) NSString * lastname;
@property (nonatomic, retain) NSString * phone;

@end
