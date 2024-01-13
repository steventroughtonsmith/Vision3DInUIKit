//
//  V3DSceneDelegate+NSToolbar.m
//  Vision3DInUIKit
//
//  Created by Steven Troughton-Smith on 13/01/2024.
//  
//

@import UIKit;

#import "V3DSceneDelegate.h"
#import "V3DSceneDelegate+NSToolbar.h"

#if TARGET_OS_MACCATALYST
@import AppKit;

@implementation V3DSceneDelegate (NSToolbarDelegate)

- (NSArray<NSToolbarItemIdentifier> *)toolbarItemIdentifiers {

	NSArray *toolbarItemsArray = [NSArray arrayWithObjects:NSToolbarToggleSidebarItemIdentifier, nil];
	return  toolbarItemsArray;
}

- (NSArray<NSToolbarItemIdentifier> *)toolbarDefaultItemIdentifiers:(NSToolbar *)toolbar {

	return  [self toolbarItemIdentifiers];
}
- (NSArray<NSToolbarItemIdentifier> *)toolbarAllowedItemIdentifiers:(NSToolbar *)toolbar {

	return  [self toolbarItemIdentifiers];
}

- (nullable NSToolbarItem *)toolbar:(NSToolbar *)toolbar itemForItemIdentifier:(NSToolbarItemIdentifier)itemIdentifier willBeInsertedIntoToolbar:(BOOL)flag {

	return [[NSToolbarItem alloc] initWithItemIdentifier:itemIdentifier];
}

@end

#endif
