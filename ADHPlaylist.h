//
//  ADHPlaylist.h
//  PlaylistC
//
//  Created by Austin Hesterly on 9/29/16.
//  Copyright © 2016 Austin Hesterly. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ADHSong;

@interface ADHPlaylist : NSObject

- (instancetype)initWithName:(NSString *)name songs:(NSArray *)songs;

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy, readonly) NSArray *songs;
- (void)addSongsObject:(ADHSong *)song;
- (void)removeSongsObject:(ADHSong *)song;

@end
