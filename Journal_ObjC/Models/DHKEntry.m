//
//  DHKEntry.m
//  Journal_ObjC
//
//  Created by Dustin Koch on 5/20/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

#import "DHKEntry.h"

@implementation DHKEntry

- (instancetype) initWithTitle:(NSString *)title body:(NSString *)bodyText
{
    self = [super init];
    if (self) {
        _title = title;
        _bodyText = bodyText;
        _timeStamp = [[NSDate alloc] init];
    }
    return self;
}

@end
