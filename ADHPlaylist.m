//
//  ADHPlaylist.m
//  PlaylistC
//
//  Created by Austin Hesterly on 9/29/16.
//  Copyright © 2016 Austin Hesterly. All rights reserved.
//

#import "ADHPlaylist.h"

//Start class extension
@interface ADHPlaylist ()

@property (nonatomic, strong) NSMutableArray *internalSongs;

@end
// end clas extension

@implementation ADHPlaylist

- (instancetype)initWithName:(NSString *)name songs:(NSArray *)songs
{
    self = [super init];
    if (self) {
        _name = [name copy];
        _internalSongs = [songs mutableCopy];
    }
    return self;
}

- (NSArray *)songs { return self.internalSongs; }

- (void)addSongsObject:(ADHSong *)song
{
    [self.internalSongs addObject:song];
}

- (void)removeSongsObject:(ADHSong *)song
{
    [self.internalSongs removeObject:song];
}

@end
