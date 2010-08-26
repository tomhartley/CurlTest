//
//  view2.m
//  CurlTest
//
//  Created by Tom Hartley on 26/08/2010.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "view2.h"


@implementation view2

- (IBAction)goToViewController1:(id)sender forEvent:(UIEvent *)event {
	UIView *superview =[self.view superview];
	view1 *viewController = [[view1 alloc] initWithNibName:@"view1" bundle:nil];	
	viewController.view.frame=[UIScreen mainScreen].applicationFrame;
	[UIView beginAnimations:nil context:nil];
	//change to set the time
	[UIView setAnimationDuration:1];
	//[UIView setAnimationBeginsFromCurrentState:YES];
	[UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:self.view.superview cache:YES];
	[superview addSubview:viewController.view];
	[self.view removeFromSuperview];
	[UIView commitAnimations];
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
