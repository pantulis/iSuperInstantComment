//
//  SIC_ListViewAppDelegate.h
//  SIC-ListView
//
//  Created by Juan Lupión on 6/5/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SIC_ListViewViewController;

@interface SIC_ListViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SIC_ListViewViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SIC_ListViewViewController *viewController;

@end

