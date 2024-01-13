//
//  V3DInspectorSidebarViewController.swift
//  Vision3DInUIKit
//
//  Created by Steven Troughton-Smith on 13/01/2024.
//

import UIKit
import SwiftUI


class V3DInspectorSidebarViewController: UIViewController {
	
	let embeddedHostingView = UIHostingController(rootView: V3DInspectorSidebar())
	
	init() {
		super.init(nibName: nil, bundle: nil)
		view.addSubview(embeddedHostingView.view)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	// MARK: -
	
	override func viewDidLayoutSubviews() {
		embeddedHostingView.view.frame = view.bounds
	}
}
