//
//  ADHPlaylistsViewController.m
//  PlaylistC
//
//  Created by Austin Hesterly on 9/29/16.
//  Copyright © 2016 Austin Hesterly. All rights reserved.
//

#import "ADHPlaylistsViewController.h"
#import "ADHPlaylistController.h"
#import "ADHPlaylist.h"
#import "ADHDetailViewController.h"

@interface ADHPlaylistsViewController ()
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ADHPlaylistsViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (IBAction)plusButtonTapped:(id)sender
{
    NSString *name = self.nameTextField.text;
    ADHPlaylistController *controller = [ADHPlaylistController sharedController];
    [controller createPlaylistWithName:name];
    [self.tableView reloadData];
}

// Mark: - UITableViewDataSource/Delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[ADHPlaylistController sharedController] playlists] count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PlaylistCell" forIndexPath: indexPath];
    
    ADHPlaylistController *controller = [ADHPlaylistController sharedController];
    ADHPlaylist *playlist = controller.playlists[indexPath.row];
    
    cell.textLabel.text = playlist.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ songs", @(playlist.songs.count)];
    
    return cell;
}

// MARK: Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"PlaylistDetailSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        ADHPlaylistController *controller = [ADHPlaylistController sharedController];
        ADHPlaylist *playlist = controller.playlists[indexPath.row];
        
        ADHDetailViewController *detailVC = segue.destinationViewController;
        detailVC.playlist = playlist;
        
    }
}

@end
