//
//  V3DInspectorSidebar.swift
//  Vision3DInUIKit
//
//  Created by Steven Troughton-Smith on 13/01/2024.
//

import SwiftUI
import RealityKit

struct V3DInspectorSidebar: View {
	let diameter:Float = 0.2 // In meters
	
	var body: some View {
		VStack {
			RealityView { content in
				let model = ModelEntity(
					mesh: .generateSphere(radius: diameter/2),
					materials: [SimpleMaterial(color: .white, isMetallic: true)])
				
				model.position = SIMD3(x: 0, y: 0, z: diameter/2) // Position the sphere in center of z space
				content.add(model)
			}
			.frame(depth: CGFloat(diameter)) // Make the RealityView be exactly as deep as the sphere, in meters

			Group {
				VStack {
					Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
						.frame(maxHeight: .greatestFiniteMagnitude)
					Button("Button") {
						
					}
				}
				.padding()
			}
			.glassBackgroundEffect()
			.offset(z: 64.0) // Different unit for z offset, corresponds to 3D points
		}
		.padding()
	}
}
