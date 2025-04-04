//
//  Aboutview.swift
//  Hideblo
//
//  Created by Arael Hidalgo Juárez on 03/04/25.
//

import SwiftUI

// Vista de bienvenida con información de la app
struct Aboutview: View {
    var body: some View {
        ZStack {
            Color.amarilloLetra
                .ignoresSafeArea()
            Image(.logo)
                .resizable()
                .frame(width: 300, height: 300)
                .blur(radius: 3)
            VStack {
                Text("Hideblo")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Text("Historias del pueblo")
                    .font(.title2)
                    .foregroundColor(.black)
                    .padding(.bottom, 10)
                Text("Objetivo de la app:")
                    .font(.headline)
                    .padding(.top, 10)
        
                   
                Text("Hideblo es una aplicación diseñada para celebrar la identidad y fomentar conversaciones significativas sobre la raza y la historia en Chiapas. A través de la exploración interactiva, los usuarios pueden descubrir sitios históricos, desbloquear relatos sobre el pasado y dejar comentarios en el camino, creando así un espacio de diálogo y aprendizaje. Nuestro objetivo es generar conciencia sobre la importancia de preservar los orígenes y la cultura de los pueblos originarios, promoviendo el respeto y la apreciación de su legado. Con una combinación de tecnología, realidad mixta y mapas interactivos, Hideblo busca ofrecer una experiencia enriquecedora que conecte a las personas con la historia y refuerce la identidad cultural.")
                    .padding()
                    //.multilineTextAlignment(.leading)
                    .font(.custom("Kumbh Sans", size: 17))
                Text("Creadores:")
                    .font(.headline)
                    .padding(.top, 10)
                Text("Arael Hidalgo Juárez\nRuben Constantino Ramos\nKevin Ramirez Baizabal")
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .background(.amarilloLetra.opacity(0.9), in: .rect(cornerRadius: 15))
            .padding()
            .foregroundStyle(.white)
        }
        
    }
}


// Vista previa
#Preview {
    Aboutview()
}
