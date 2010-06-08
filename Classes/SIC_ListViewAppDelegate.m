//
//  SIC_ListViewAppDelegate.m
//  SIC-ListView
//
//  Created by Juan Lupión on 6/5/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "SIC_ListViewAppDelegate.h"
#import "SIC_ListViewViewController.h"

@implementation SIC_ListViewAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
