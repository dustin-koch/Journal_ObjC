//
//  EntryDetailViewController.h
//  Journal_ObjC
//
//  Created by Dustin Koch on 5/20/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DHKEntry;

NS_ASSUME_NONNULL_BEGIN

@interface EntryDetailViewController : UIViewController

@property (nonatomic, strong) DHKEntry *entry;

@end

NS_ASSUME_NONNULL_END
