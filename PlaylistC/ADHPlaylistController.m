//
//  ADHPlaylistController.m
//  PlaylistC
//
//  Created by Austin Hesterly on 9/29/16.
//  Copyright © 2016 Austin Hesterly. All rights reserved.
//

#import "ADHPlaylistController.h"
#import "ADHPlaylist.h"

@interface ADHPlaylistController ()

@property (nonatomic, strong) NSMutableArray *internalPlaylists;

@end

@implementation ADHPlaylistController

+ (ADHPlaylistController *)sharedController
{
    static ADHPlaylistController *sharedController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedController = [[ADHPlaylistController alloc] init];
    });
    return sharedController;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalPlaylists = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createPlaylistWithName:(NSString *)name
{
    ADHPlaylist *playlist = [[ADHPlaylist alloc] initWithName:name songs:@[]];
    [self.internalPlaylists  addObject:playlist];
}

- (void)deletePlaylist:(ADHPlaylist *)playlist
{
    [self.internalPlaylists removeObject:playlist];
}

// MARK - Properties

- (NSArray *)playlists { return self.internalPlaylists; }

@end
