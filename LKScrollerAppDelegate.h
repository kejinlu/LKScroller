//
//  LKScrollerAppDelegate.h
//  LKScroller
//
//  Created by Luke on 6/18/11.
//  Copyright 2011 Taobao.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface LKScrollerAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
	NSTableView *tableView;
	
	NSMutableArray *data;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTableView *tableView;

@end
