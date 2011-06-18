//
//  LKScrollerAppDelegate.m
//  LKScroller
//
//  Created by Luke on 6/18/11.
//  Copyright 2011 Geeklu.com. All rights reserved.
//

#import "LKScrollerAppDelegate.h"

@implementation LKScrollerAppDelegate

@synthesize window,tableView;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
	data = [[NSMutableArray alloc] initWithCapacity:0];
	for (int i = 0; i < 100; i++) {
		[data addObject:[NSString stringWithFormat:@"%d",i]];
	}
	[tableView reloadData];
}


- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
	return [data count];
}
- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
	return [data objectAtIndex:row];
}

- (void)dealloc{
	if (data) {
		[data release];
	}
	[super dealloc];
}
@end
