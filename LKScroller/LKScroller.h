//
//  LKScroller.h
//  LKScroller
//
//  Created by Luke on 5/15/11.
//  Copyright 2011 Geeklu.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface LKScroller : NSScroller {
	BOOL vertical_;
	NSTimer *autoHideScrollerTimer;

}
-(void)hide;
@end
