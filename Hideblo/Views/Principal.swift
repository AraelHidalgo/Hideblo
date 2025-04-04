//
//  Principal.swift
//  Hideblo
//
//  Created by Arael Hidalgo Juárez on 31/03/25.
//
import SwiftUI

struct Principal: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    Color(.white).ignoresSafeArea()
                    
                    VStack {
                        HStack{
                            NavigationLink(destination: Aboutview()) {
                                Image(systemName: "info.circle.fill")
                                    .font(.title2)
                                    .foregroundStyle(.boton)
                            }
                            Text("About")
                                .font(.custom("Inter", size: 13))
                                .foregroundStyle(.gray)
                                .fontWeight(.light)
                            Spacer()
                        }
                        .padding(.bottom,-30)
                        .padding(.horizontal,20)
                        // Logo en la parte superior
                        Image("Logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: min(geometry.size.width * 0.4, 105))
                            .padding(.top, geometry.size.height * 0.1)
                            
                        
                        Spacer()
                        
                        // Contenido central
                        VStack(spacing: 10) {
                            Text("Hideblo")
                                .foregroundStyle(.amarilloLetra)
                                .font(.custom("Josefin Sans", size: min(geometry.size.width * 0.19, 90)))
                                .bold()
                                .minimumScaleFactor(0.5)
                                .lineLimit(1)
                            
                            Text("¡Explora, conoce y conversa\nsobre la raza!")
                                .foregroundStyle(.gray)
                                .font(.custom("Inter", size: min(geometry.size.width * 0.08, 22)))
                                .fontWeight(.light)
                                .multilineTextAlignment(.leading)
                                .minimumScaleFactor(0.2)
                                
                        }
                        .padding(.horizontal, 10)
                        
                        Spacer()
                        
                        // Botón de navegación
                        NavigationLink(destination: SearchView()) {
                            PrimaryButton(text: "Comienza!")
                                .frame(width: geometry.size.width * 0.45)
                                .frame(height: geometry.size.width * 0.17)
                            
                        }
                        .padding(.bottom, geometry.size.height * 0.05)
                        
                        Spacer()
                        
                        // Texto inferior
                        Text("By Ohmcodevs")
                            .foregroundStyle(.black)
                            .font(.custom("Kumbh Sans", size: 13))
                           
                    }
                    .frame(width: geometry.size.width)
                }
            }
        }
    }
}
#Preview {
    Principal()
}
