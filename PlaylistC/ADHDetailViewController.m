//
//  ADHDetailViewController.m
//  PlaylistC
//
//  Created by Austin Hesterly on 9/29/16.
//  Copyright © 2016 Austin Hesterly. All rights reserved.
//

#import "ADHDetailViewController.h"
#import "ADHPlaylist.h"
#import "ADHSong.h"

@interface ADHDetailViewController ()
@property (strong, nonatomic) IBOutlet UITextField *titleTextField;
@property (strong, nonatomic) IBOutlet UITextField *artistTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ADHDetailViewController

- (IBAction)plusButtonTapped:(id)sender {
    
    NSString *title = self.titleTextField.text;
    NSString *artist = self.artistTextField.text;
    ADHSong *song = [[ADHSong alloc] initWithTitle:title artist:artist];
    [self.playlist addSongsObject:song];
    [self.tableView reloadData];
    
}

// MARK: - UITableViewDataSource/Delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.playlist.songs.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SongCell" forIndexPath: indexPath];
    
    ADHSong *song = self.playlist.songs[indexPath.row];
    cell.textLabel.text = song.title;
    cell.detailTextLabel.text = song.artist;
    
    return cell;
}

- (void)setPlaylist:(ADHPlaylist *)playlist
{
    if (playlist != _playlist) {
        _playlist = playlist;
        [self.tableView reloadData];
    }
}

@end
