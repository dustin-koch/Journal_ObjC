//
//  EntryDetailViewController.m
//  Journal_ObjC
//
//  Created by Dustin Koch on 5/20/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "DHKEntry.h"
#import "DHKEntryController.h"


@interface EntryDetailViewController ()
//MARK: - OUTLETS

@property (weak, nonatomic) IBOutlet UITextField *entryTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;


@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if(self.entry) {
        self.entryTitleTextField.text = self.entry.title;
        self.bodyTextView.text = self.entry.bodyText;
    }
}

//MARK: - ACTIONS
- (IBAction)clearButtonTapped:(UIButton *)sender {
    self.entryTitleTextField.text = @"";
    self.bodyTextView.text = @"";
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    if ((self.entryTitleTextField.text && self.entryTitleTextField.text.length > 0) && (self.bodyTextView.text && self.bodyTextView.text > 0)) {
        if (self.entry) {
            [[DHKEntryController sharedController] updateEntry:self.entry withTitle:self.entryTitleTextField.text withBody:self.bodyTextView.text];
            [self.navigationController popViewControllerAnimated:true];
        } else {
            [[DHKEntryController sharedController] createEntryWithName:self.entryTitleTextField.text andBody:self.bodyTextView.text];
            [self.navigationController popViewControllerAnimated:true];
        }
    }
}

@end
