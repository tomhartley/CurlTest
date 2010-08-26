//
//  view1.m
//  CurlTest
//
//  Created by Tom Hartley on 26/08/2010.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "view1.h"


@implementation view1

- (IBAction)goToViewController2:(id)sender forEvent:(UIEvent *)event {
	UIView *superview =[self.view superview];
	view2 *viewController = [[view2 alloc] initWithNibName:@"view2" bundle:nil];	
	viewController.view.frame=CGRectMake(0, 0, 768, 1024);
	[UIView beginAnimations:nil context:nil];
	//change to set the time
	[UIView setAnimationDuration:1];
	//[UIView setAnimationBeginsFromCurrentState:YES];
	[UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view.superview cache:YES];
	[superview addSubview:viewController.view];
	[self.view removeFromSuperview];
	[UIView commitAnimations];
}

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
