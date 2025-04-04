//
//  RobotTriste.swift
//  Hideblo
//
//  Created by ADMIN UNACH on 03/04/25.
//

import SwiftUI

struct RobotTriste: View {
    var body: some View {
        ZStack{
            
            Image("robot")
                .resizable()
                .scaledToFit()
                .frame(width: 250)
            Image("Tristes")
                .resizable()
                .scaledToFit()
                .frame(width: 120)
                .offset(x: -40)
        }
    }
}

#Preview {
    RobotTriste()
}
