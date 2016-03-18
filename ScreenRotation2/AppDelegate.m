//
//  AppDelegate.m
//  ScreenRotation2
//
//  Created by rw on 2016/03/18.
//  Copyright © 2016年 覗文君. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    MainViewController *mainView = [[MainViewController  alloc]init];
    self.window.rootViewController = mainView;
    [self.window makeKeyAndVisible];
    return YES;
}



@end
