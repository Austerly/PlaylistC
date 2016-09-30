//
//  ADHSong.m
//  PlaylistC
//
//  Created by Austin Hesterly on 9/29/16.
//  Copyright © 2016 Austin Hesterly. All rights reserved.
//

#import "ADHSong.h"

@implementation ADHSong

- (instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist
{
    self = [super init];
    if (self) {
        _title = [title copy];
        _artist = [artist copy];
    }
    return self;
}

@end

