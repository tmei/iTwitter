//
//  Tweet.h
//  twitter
//
//  Created by Timothy Lee on 8/5/13.
//  Copyright (c) 2013 codepath. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Tweet : RestObject

@property (nonatomic, strong, readonly) NSString *text;
@property (nonatomic, strong, readonly) User *user;
@property (nonatomic, strong, readonly) NSString *createdAt;

+ (NSMutableArray *)tweetsWithArray:(NSArray *)array;

@end
