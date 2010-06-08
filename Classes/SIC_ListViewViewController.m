//
//  SIC_ListViewViewController.m
//  SIC-ListView
//
//  Created by Juan Lupión on 6/5/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "SIC_ListViewViewController.h"
#import "SoundEffect.h"

@implementation SIC_ListViewViewController

@synthesize	comments;



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[comments release];
    [super dealloc];
}

-(id) initWithCoder:(NSCoder *)coder {
	if (self = [super initWithCoder:coder]){
		NSLog(@"Estoy en initWithCoder");
		NSArray *keys = [NSArray arrayWithObjects:@"title", @"filename",nil];
		
		NSArray *objects1 = [NSArray arrayWithObjects: @"Que lo sepa España", @"que_lo_sepa_espanya",nil];
		NSArray *objects2 = [NSArray arrayWithObjects: @"Compresor", @"compresor",nil];		
		NSArray *objects3 = [NSArray arrayWithObjects: @"Mu pocos", @"mu_pocos",nil];
		NSArray *objects4 = [NSArray arrayWithObjects: @"Eres mu fea", @"eres_mu_fea",nil];
		NSArray *objects5 = [NSArray arrayWithObjects: @"Pero esto que es", @"pero_esto_que_es",nil];
		NSArray *objects6 = [NSArray arrayWithObjects: @"Peores que los gitanos", @"peores_que_los_gitanos",nil];
		NSArray *objects7 = [NSArray arrayWithObjects: @"Me suda las pelotas", @"me_suda_las_pelotas_llenas_de_pelos",nil];
		
		self.comments = [NSMutableArray
						 arrayWithObjects:[NSDictionary dictionaryWithObjects:objects1 forKeys:keys],
										  [NSDictionary dictionaryWithObjects:objects2 forKeys:keys],
										  [NSDictionary dictionaryWithObjects:objects3 forKeys:keys],
										  [NSDictionary dictionaryWithObjects:objects4 forKeys:keys],
										  [NSDictionary dictionaryWithObjects:objects5 forKeys:keys],
 										  [NSDictionary dictionaryWithObjects:objects6 forKeys:keys],
 										  [NSDictionary dictionaryWithObjects:objects7 forKeys:keys],					 
						 nil];
		return self;
	}
}
	
// TableViewDataSource

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [comments count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString	*CellIdentifier = @"Comment";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
		cell = [[[UITableViewCell alloc]
				 initWithFrame: CGRectZero
				 reuseIdentifier:CellIdentifier] autorelease];
	}
	cell.text = [[comments objectAtIndex:indexPath.row] objectForKey: @"title"];
	return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	NSBundle *mainBundle = [NSBundle mainBundle];
	SoundEffect *audio = [[SoundEffect alloc] initWithContentsOfFile:[mainBundle pathForResource:[[comments objectAtIndex:indexPath.row] objectForKey: @"filename"] ofType:@"mp3"]];
	[audio play];
}



@end
