//
//  DHKEntry.h
//  Journal_ObjC
//
//  Created by Dustin Koch on 5/20/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DHKEntry : NSObject

@property(nonatomic, copy) NSString* title;
@property(nonatomic, copy) NSString* bodyText;
@property(nonatomic, copy) NSDate* timeStamp;

- (instancetype) initWithTitle:(NSString*)title body:(NSString*)bodyText;


@end

NS_ASSUME_NONNULL_END
