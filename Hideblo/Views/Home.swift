//
//  Home.swift
//  kkj
//
//  Created by Arael Hidalgo Juárez on 11/03/25.
//


//
//  View.swift
//  BlendTest
//
//  Created by Arael Hidalgo Juárez on 11/03/25.
//

import SwiftUI
import SceneKit

struct Home: View {
    @State var scene: SCNScene? = .init(named: "Mascara.scn")
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 30) {
                    Text("Mueve el objeto")
                        .padding(7)
                        .font(.system(size: 50))
                        .foregroundStyle(.black)
                        .bold()
                        .background(.white)
                        .border(.cyan)
                        .clipShape(.rect(cornerRadius: 20))
                    CustomSceneKit(scene: $scene)
                        .frame(height: 650)
                    
                    
                    Spacer()
                    
                    HStack (spacing: 100 ){
                        MujerBase()
                            .scaleEffect(CGSize(width: 1, height: 1))
                        HombreBase()
                            .scaleEffect(CGSize(width: 1, height: 1))
                    }
                    
                }
                .padding()
            }
        }
    }
}


#Preview {
    Home()
}
