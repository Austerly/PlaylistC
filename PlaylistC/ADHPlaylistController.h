//
//  ADHPlaylistController.h
//  PlaylistC
//
//  Created by Austin Hesterly on 9/29/16.
//  Copyright © 2016 Austin Hesterly. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ADHPlaylist;

@interface ADHPlaylistController : NSObject

+ (ADHPlaylistController *)sharedController;

- (void)createPlaylistWithName:(NSString *)name;
- (void)deletePlaylist:(ADHPlaylist *)playlist;

@property (nonatomic, strong, readonly) NSArray *playlists;

@end
