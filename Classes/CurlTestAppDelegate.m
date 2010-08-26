//
//  CurlTestAppDelegate.m
//  CurlTest
//
//  Created by Tom Hartley on 26/08/2010.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//


#import "CurlTestAppDelegate.h"

@implementation CurlTestAppDelegate


@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

	// Override point for customization after application launch.
	[window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {

	// Save data if appropriate.
}

- (void)dealloc {

	[window release];
    [super dealloc];
}

@end

