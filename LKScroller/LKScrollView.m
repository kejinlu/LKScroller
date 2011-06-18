//
//  LKScrollView.m
//  LKScroller
//
//  Created by Luke on 5/15/11.
//  Copyright 2011 Geeklu.com. All rights reserved.
//

#import "LKScrollView.h"
#define SCROLLER_MARGIN_RIGHT 14

@implementation LKScrollView
- (void)tile
{
    [super tile];
	
    // 设置scroller的位置
    NSScroller *verticalScroller = [self verticalScroller];
    NSRect verticalScrollerFrame = [verticalScroller frame];
    verticalScrollerFrame.origin.x = [self bounds].size.width - SCROLLER_MARGIN_RIGHT;
    [verticalScroller setFrame:verticalScrollerFrame];
	
	//contentView 是NSClipView
	[[self contentView] setFrame:[self frame]];
	
}


- (void)scrollWheel:(NSEvent *)theEvent{
	if (![self hasVerticalScroller]) {
		[self setHasVerticalScroller:YES];
	}
	[super scrollWheel:theEvent];
	[[self verticalScroller] setHidden:NO];
 
}

@end
