//
//  AppDelegate.m
//  WAYAppStoreWindowDemo
//
//  Created by Raffael Hannemann on 16.11.14.
//  Copyright (c) 2014 We Are Yeah!. All rights reserved.
//

#import "AppDelegate.h"
#import "WAYAppStoreWindow.h"

@interface AppDelegate ()

@property (weak) IBOutlet WAYAppStoreWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application
	[_window setTitleBarHeight:100];
	
	NSButton *button = [[NSButton alloc] initWithFrame:NSMakeRect(NSWidth(self.window.frame)-160, 38, 150, 22)];
	[button setTitle:@"Titlebar Subview"];
	[button setAutoresizingMask:NSViewMinXMargin|NSViewMinYMargin];
	[_window.titleBarView addSubview:button];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
	// Insert code here to tear down your application
}

@end
