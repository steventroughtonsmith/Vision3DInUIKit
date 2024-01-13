//
//  V3DMainViewController.m
//  Vision3DInUIKit
//
//  Created by Steven Troughton-Smith on 13/01/2024.
//
//

@import UIKit;

#import "V3DMainViewController.h"
#import "Vision3DInUIKit-Swift.h"

@interface V3DMainViewController ()
@property V3DInspectorSidebarViewController *inspectorSidebarViewController;
@property UILabel *justALabel;
@end

@implementation V3DMainViewController

-(instancetype)init {
	
	if (self = [super init]) {
		
		self.title = @"Vision3DInUIKit";
		
		self.justALabel = [UILabel new];
		self.justALabel.text = @"I'm just a UILabel";
		self.justALabel.textAlignment = NSTextAlignmentCenter;
		
		[self.view addSubview:self.justALabel];
		
		
		self.inspectorSidebarViewController = [V3DInspectorSidebarViewController new];
		
		[self.view addSubview:self.inspectorSidebarViewController.view];
	}
	
	return self;
}

- (void)viewWillLayoutSubviews
{
	CGFloat inspectorWidth = 320.0;
	
	CGRect inspectorRect = CGRectZero;
	CGRect theRestRect = CGRectZero;

	CGRectDivide(self.view.bounds, &inspectorRect, &theRestRect, inspectorWidth, CGRectMaxXEdge);
	
	self.justALabel.frame = theRestRect;
	self.inspectorSidebarViewController.view.frame = inspectorRect;
}

#if TARGET_OS_VISION
-(UIContainerBackgroundStyle)preferredContainerBackgroundStyle {
	return UIContainerBackgroundStyleGlass;
}
#endif

@end
