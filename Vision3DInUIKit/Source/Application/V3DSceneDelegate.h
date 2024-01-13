//
//  V3DSceneDelegate.h
//  Vision3DInUIKit
//
//  Created by Steven Troughton-Smith on 13/01/2024.
//  
//

@import UIKit;
#if TARGET_OS_MACCATALYST
@import AppKit;
#endif

NS_ASSUME_NONNULL_BEGIN

@interface V3DSceneDelegate: UIResponder
#if TARGET_OS_MACCATALYST
<UIWindowSceneDelegate, NSToolbarDelegate>
#else
<UIWindowSceneDelegate>
#endif

@property (nullable, nonatomic, strong) UIWindow *window;


@end

NS_ASSUME_NONNULL_END
