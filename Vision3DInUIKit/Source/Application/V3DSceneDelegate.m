//
//  V3DSceneDelegate.m
//  Vision3DInUIKit
//
//  Created by Steven Troughton-Smith on 13/01/2024.
//  
//

@import UIKit;

#import "V3DSceneDelegate.h"
#import "V3DMainViewController.h"

@implementation V3DSceneDelegate

- (void)scene:(UIWindowScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {

	self.window = [[UIWindow alloc] initWithWindowScene:scene];
	self.window.rootViewController = [[V3DMainViewController alloc] init];

#if TARGET_OS_MACCATALYST

	NSToolbar *toolbar = [[NSToolbar alloc] initWithIdentifier:@"V3DSceneDelegate.Toolbar"];
	toolbar.delegate = self;
	toolbar.displayMode = NSToolbarDisplayModeIconOnly;
	toolbar.allowsUserCustomization = NO;
	
	scene.titlebar.toolbar = toolbar;
	scene.titlebar.toolbarStyle = UITitlebarToolbarStyleUnified;

#endif

	[self.window makeKeyAndVisible];
}

@end
