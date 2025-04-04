//
//  RobotFeliz.swift
//  Hideblo
//
//  Created by ADMIN UNACH on 03/04/25.
//

import SwiftUI

struct RobotFeliz: View {
    var body: some View {
        ZStack{
            Image("robot")
                .resizable()
                .scaledToFit()
                .frame(width: 250)
            Image("Feliz")
                .resizable()
                .scaledToFit()
                .frame(width: 120)
                .offset(x: -40)
        }
    }
}

#Preview {
    RobotFeliz()
}
