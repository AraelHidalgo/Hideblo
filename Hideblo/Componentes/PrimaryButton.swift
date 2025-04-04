//
//  PrimaryButton.swift
//  Hideblo
//
//  Created by Arael Hidalgo Juárez on 31/03/25.
//


import SwiftUI

struct PrimaryButton: View {
    var text : String
    var background : Color = Color(.boton)
    
    var body: some View {
        Text(text)
            .frame(maxWidth: 280, maxHeight: 110)
            .background(Color(background))
            .foregroundStyle(Color(.white))
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .font(.custom("Josefin Sans", size: 23))
            .fontWeight(.bold)
        
    }
}

#Preview {
PrimaryButton(text: "Comienza!")
}
