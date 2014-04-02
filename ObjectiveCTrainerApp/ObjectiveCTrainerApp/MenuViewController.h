//
//  MenuViewController.h
//  ObjectiveCTrainerApp
//
//  Created by Kylan Koblitz on 4/2/14.
//  Copyright (c) 2014 Q New Media Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuModel.h"
#import "MenuItem.h"

@interface MenuViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) MenuModel *model;
@property (strong, nonatomic) NSArray *menuItems;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
