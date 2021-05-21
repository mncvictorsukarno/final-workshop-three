//
//  AppDelegate.m
//  WorkshopObjC
//
//  Created by Victor Toya on 20/04/21.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    /*
     Workshop Notes ::
     In this method we initialized first view controller we want to show.
     First you need to initialized UIWindow with parameter frame of size.
     Frame size of UIWindow using UIScreen which object that define base on hardware device.
     Then we need to set rootViewController to define first view controller we want to show.
     */
    
    ViewController *controller = [[ViewController alloc] init];
    controller.title = @"Objective-C Workshop";
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:controller];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}

/*
 Workshop Notes ::
 UISceneSession lifecycle is not needed here because UIScene is part of SwiftUI.
 - Make sure to delete file of UISceneDelegate.h & UISceneDelegate.m
 - Make sure to delete "Application Scene Manifest" inside .plist file
 - Since we programmatically design UI layout, make sure to delete "Main storyboard file base name" inside .plist file
 */

@end
