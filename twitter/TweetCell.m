//
//  TweetCell.m
//  twitter
//
//  Created by Timothy Lee on 8/6/13.
//  Copyright (c) 2013 codepath. All rights reserved.
//

#import "TweetCell.h"
#import <UIKit/UIKit.h>
#import "UIImageView+WebCache.h"

@interface TweetCell ()

@property (weak, nonatomic) IBOutlet UILabel *nameUILabel;
@property (weak, nonatomic) IBOutlet UILabel *textUILabel;
@property (weak, nonatomic) IBOutlet UIImageView *profileUIImageView;
@property (weak, nonatomic) IBOutlet UILabel *createdAtUILabel;

@end

@implementation TweetCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setTweet:(Tweet *)tweet {
    self.textUILabel.text = tweet.text;
    self.nameUILabel.text = tweet.user.name;
    self.createdAtUILabel.text = tweet.createdAt;
    [self.profileUIImageView setImageWithURL:tweet.user.profileImageUrl];
    [self.profileUIImageView setNeedsLayout];
}

@end
