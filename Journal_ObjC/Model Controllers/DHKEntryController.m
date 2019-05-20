//
//  DHKEntryController.m
//  Journal_ObjC
//
//  Created by Dustin Koch on 5/20/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

#import "DHKEntryController.h"

@interface DHKEntryController()

@property (nonatomic, strong, readwrite) NSMutableArray* internalEntries;

@end

@implementation DHKEntryController

+ (DHKEntryController*) sharedController
{
    static DHKEntryController *sharedController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedController = [DHKEntryController new];
    });
    return sharedController;
}

- (instancetype) init
{
    self = [super init];
    if (self) {
        _internalEntries = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)entries
{
    return self.internalEntries;
}
//MARK CRUD FUNCTIONS
- (void)createEntryWithName:(NSString *)name andBody:(NSString *)bodyText
{
    DHKEntry *newEntry = [[DHKEntry alloc] initWithTitle:name body:bodyText];
    [self.internalEntries addObject:newEntry];
}

- (void)deleteEntry:(DHKEntry *)entry
{
    [self.internalEntries removeObject:entry];
}

@end
