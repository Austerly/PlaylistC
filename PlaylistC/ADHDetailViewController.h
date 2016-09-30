//
//  ADHDetailViewController.h
//  PlaylistC
//
//  Created by Austin Hesterly on 9/29/16.
//  Copyright © 2016 Austin Hesterly. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ADHPlaylist;

@interface ADHDetailViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) ADHPlaylist *playlist;

@end
