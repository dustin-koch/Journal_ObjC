//
//  DHKEntryController.h
//  Journal_ObjC
//
//  Created by Dustin Koch on 5/20/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DHKEntry.h"


NS_ASSUME_NONNULL_BEGIN

@interface DHKEntryController : NSObject

//Source of truth
@property (nonatomic, strong, readonly) NSArray* entries;

//Singleton
+ (DHKEntryController*) sharedController;

//CRUD functions
//add entry
- (void) createEntryWithName:(NSString*) name andBody:(NSString*) bodyText;

//delete entry
- (void) deleteEntry:(DHKEntry*) entry;

//update entry?

@end

NS_ASSUME_NONNULL_END
