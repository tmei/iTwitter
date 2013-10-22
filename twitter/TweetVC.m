//
//  TweetVC.m
//  twitter
//
//  Created by Z_ZyngaTesting on 10/21/13.
//  Copyright (c) 2013 codepath. All rights reserved.
//

#import "TweetVC.h"
#import "UIImageView+WebCache.h"

@interface TweetVC ()

@property (weak, nonatomic) IBOutlet UIImageView *profileUIImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameUILabel;
@property (weak, nonatomic) IBOutlet UILabel *createdAtUILabel;
@property (weak, nonatomic) IBOutlet UILabel *textUILabel;
- (IBAction)onFavoriteUIButton:(id)sender;
- (IBAction)onReplyUIButton:(id)sender;
- (IBAction)onRetweetUIButton:(id)sender;


@property (weak, nonatomic) Tweet *tweet;

@end

@implementation TweetVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (TweetVC *)initWithTweet:(Tweet *)tweet {
    self = [super init];
    self.tweet = tweet;
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self updateValues];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateValues {
    self.textUILabel.text = self.tweet.text;
    self.nameUILabel.text = self.tweet.user.name;
    self.createdAtUILabel.text = self.tweet.createdAt;
    [self.profileUIImageView setImageWithURL:self.tweet.user.profileImageUrl];
    [self.profileUIImageView setNeedsLayout];
}

- (IBAction)onFavoriteUIButton:(id)sender {
}

- (IBAction)onReplyUIButton:(id)sender {
}

- (IBAction)onRetweetUIButton:(id)sender {
}

@end
