//
//  SIC_ListViewViewController.h
//  SIC-ListView
//
//  Created by Juan Lupión on 6/5/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SIC_ListViewViewController : UIViewController <UITableViewDataSource>{
	NSMutableArray *comments;
}

@property (nonatomic, retain) NSMutableArray *comments;

@end

