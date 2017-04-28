//
//  AppDelegate.h
//  IesPush
//
//  Created by wangshuai on 17/4/19.
//  Copyright © 2017年 wangshuai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
     NSData *token;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong,nonatomic) NSData *token;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

