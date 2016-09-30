//
//  ADHSong.h
//  PlaylistC
//
//  Created by Austin Hesterly on 9/29/16.
//  Copyright © 2016 Austin Hesterly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ADHSong : NSObject


- (instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *artist;

@end
