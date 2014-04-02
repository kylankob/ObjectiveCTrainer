//
//  MenuItem.h
//  ObjectiveCTrainerApp
//
//  Created by Kylan Koblitz on 4/2/14.
//  Copyright (c) 2014 Q New Media Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuItem : NSObject

@property (strong, nonatomic) NSString *menuTitle;
@property (strong, nonatomic) NSString *menuIcon;
@property (nonatomic) int screenType;

@end
