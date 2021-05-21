//
//  AppDelegate.h
//  WorkshopObjC
//
//  Created by Victor Toya on 20/04/21.
//

#import <UIKit/UIKit.h>

/*
 Workshop Notes ::
 Make sure we import .h file which class we want to use and called.
 */
#import "ViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

/*
 Workshop Notes ::
 UIWindow is the backdrop for your app’s user interface and the object that dispatches events to your views.
 */
@property (strong, nonatomic) UIWindow * window;

@end

