//
//  MenuModel.m
//  ObjectiveCTrainerApp
//
//  Created by Kylan Koblitz on 4/2/14.
//  Copyright (c) 2014 Q New Media Inc. All rights reserved.
//

#import "MenuModel.h"
#import "MenuItem.h"

@implementation MenuModel

- (NSArray *)getMenuItems
{
    NSMutableArray *menuItemArray = [[NSMutableArray alloc] init];
    
    MenuItem *item1 = [[MenuItem alloc] init];
    item1.menuTitle = @"Easy Questions";
    // icon here
    item1.screenType = ScreenTypeQuestion;
    [menuItemArray addObject:item1];
    
    MenuItem *item2 = [[MenuItem alloc] init];
    item2.menuTitle = @"Medium Questions";
    // icon here
    item2.screenType = ScreenTypeQuestion;
    [menuItemArray addObject:item2];
    
    MenuItem *item3 = [[MenuItem alloc] init];
    item3.menuTitle = @"Hard Questions";
    // icon here
    item3.screenType = ScreenTypeQuestion;
    [menuItemArray addObject:item3];
    
    MenuItem *item4 = [[MenuItem alloc] init];
    item4.menuTitle = @"Statistics";
    // icon here
    item4.screenType = ScreenTypeStats;
    [menuItemArray addObject:item4];
    
    MenuItem *item5 = [[MenuItem alloc] init];
    item5.menuTitle = @"About";
    // icon here
    item5.screenType = ScreenTypeAbout;
    [menuItemArray addObject:item5];
    
    MenuItem *item6 = [[MenuItem alloc] init];
    item6.menuTitle = @"Remove Ads";
    // icon here
    item6.screenType = ScreenTypeRemoveAds;
    [menuItemArray addObject:item6];
    
    return menuItemArray;
}


@end
