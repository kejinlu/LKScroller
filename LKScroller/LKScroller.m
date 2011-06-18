//
//  LKScroller.m
//  LKScroller
//
//  Created by Luke on 5/15/11.
//  Copyright 2011 Geeklu.com. All rights reserved.
//

#import "LKScroller.h"


@implementation LKScroller

NSColor *KScrollerKnobColorNormal;

+ (void)load {
	NSAutoreleasePool *pool = [NSAutoreleasePool new];
	KScrollerKnobColorNormal = [[NSColor colorWithCalibratedWhite:0.2 alpha:0.3] retain];	
	[pool drain];
}

- (void)drawKnob {
	NSRect rect = [self rectForPart:NSScrollerKnob];
	rect.size.width = 6.0;
	rect.origin.x = 3.0;
	rect.size.height += 28;
	[KScrollerKnobColorNormal set];
	NSBezierPath *bp = [NSBezierPath bezierPathWithRoundedRect:rect
													   xRadius:3
													   yRadius:3];
	[bp fill];
	[bp setLineWidth:0.2];
	[[NSColor grayColor] set];
	[bp stroke];
	
	
	if (autoHideScrollerTimer&&[autoHideScrollerTimer isValid]) {
		[autoHideScrollerTimer invalidate];
		[autoHideScrollerTimer release];
	}
	autoHideScrollerTimer=[[NSTimer scheduledTimerWithTimeInterval:0.25 
															target:self 
														  selector:@selector(hide) 
														  userInfo:nil repeats:NO] retain];
}

- (void)drawArrow:(NSScrollerArrow)arrow highlightPart:(int)highlight {
	// we don't roll with arrows
}
- (BOOL)isOpaque {
	return YES;
}

- (void)drawKnobSlotInRect:(NSRect)slotRect highlight:(BOOL)highlight {
	//We don't want the KnobSlot
}

-(void)hide{
	[self setHidden:YES];
}

@end
