//
//  MenuViewController.m
//  ObjectiveCTrainerApp
//
//  Created by Kylan Koblitz on 4/2/14.
//  Copyright (c) 2014 Q New Media Inc. All rights reserved.
//

#import "MenuViewController.h"
#import "SWRevealViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // set self as data source and delegate
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    // fetch menu items
    self.menuItems = [[[MenuModel alloc] init] getMenuItems];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Table View Delegate Methods

- (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // retrieve cell
    NSString *cellIdentifier = @"MenuItemCell";
    UITableViewCell *menuCell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    // get menu item asking for
    MenuItem *item = self.menuItems[indexPath.row];

    // set menu item text and icon
    menuCell.textLabel.text = item.menuTitle;
    
    return menuCell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // check which item was tapped
    MenuItem *item = self.menuItems[indexPath.row];
    
    switch (item.screenType) {
        case ScreenTypeQuestion:
            // go to question
            [self performSegueWithIdentifier:@"GoToQuestionSegue" sender:self];
            break;
            
        case ScreenTypeStats:
            // go to stats
            [self performSegueWithIdentifier:@"GoToStatsSegue" sender:self];
            break;
            
        case ScreenTypeAbout:
            // go to about
            [self performSegueWithIdentifier:@"GoToAboutSegue" sender:self];
            break;
        
        case ScreenTypeRemoveAds:
            // go to removeAds
            [self performSegueWithIdentifier:@"GoToRemoveAdsSegue" sender:self];
            break;
            
        default:
            break;
    }
}

#pragma mark Segue method

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // set the front view controller to be the destination one
    [self.revealViewController setFrontViewController:segue.destinationViewController];
    
    // slide the front view controller back in place
    [self.revealViewController revealToggleAnimated:YES];
}


@end
