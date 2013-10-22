//
//  ComposeVC.m
//  twitter
//
//  Created by Z_ZyngaTesting on 10/21/13.
//  Copyright (c) 2013 codepath. All rights reserved.
//

#import "ComposeVC.h"

@interface ComposeVC ()

@property (weak, nonatomic) IBOutlet UITextView *textUITextView;
- (IBAction)onCancelUIButton:(id)sender;
- (IBAction)onTweetUIButton:(id)sender;


@end

@implementation ComposeVC

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
    // Do any additional setup after loading the view from its nib.
    self.textUITextView.text = @"";
    [self.textUITextView becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCancelUIButton:(id)sender {
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

- (IBAction)onTweetUIButton:(id)sender {
}
@end
