//
//  CustomSceneKit.swift
//  kkj
//
//  Created by Arael Hidalgo Juárez on 11/03/25.
//


//
//  SwiftUIView.swift
//  BlendTest
//
//  Created by Arael Hidalgo Juárez on 11/03/25.
//

import SwiftUI
import SceneKit

struct CustomSceneKit: UIViewRepresentable {
    @Binding var scene : SCNScene?
    
    func makeUIView(context: Context) -> SCNView {
        let view = SCNView()
        view.allowsCameraControl = true
        view.autoenablesDefaultLighting = true
        view.antialiasingMode = .multisampling2X
        view.backgroundColor = .clear
        view.scene = scene
        return view
    }
    
    func updateUIView(_ uiView: SCNView, context: Context) {
        
    }
}

#Preview {
    ContentView()
}
