//
//  Personaje1.swift
//  kkj
//
//  Created by Arael Hidalgo Juárez on 21/03/25.
//

import SwiftUI

struct MujerBase: View {
    var body: some View {
        
        VStack {
            Spacer()
            ZStack{
                Image("ManoDerMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width:20)
                    .offset(x:-43,y:88)
                    .rotationEffect(.degrees(10))
                Image("ManoIzqMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width:20)
                    .offset(x:43,y:88)
                    .rotationEffect(.degrees(-10))
                Image("AntebrazoDerMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20)
                    .offset(x:50,y: 38)
                    .rotationEffect(.degrees(-5))
                Image("AntebrazoIzqMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20)
                    .offset(x:-50,y: 38)
                    .rotationEffect(.degrees(5))
                Image("BrazoDerMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .offset(x: 48,y:4)
                    .rotationEffect(.degrees(-10))
                Image("BrazoIzqMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .offset(x: -48,y: 4)
                    .rotationEffect(.degrees(10))
           
             
                //Piernas y pelvis
                Image("PelvisMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80)
                    .offset(x:0,y:67)
                Image("MusloDerMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 43)
                    .offset(x:-22,y:115)
                    .rotationEffect(.degrees(0))
                Image("MusloIzqMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 43)
                    .offset(x:22,y:115)
                    .rotationEffect(.degrees(-0))
                Image("PiernaDerMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .offset(x:-22.8, y:188)
                Image("PiernaIzqMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .offset(x:22.8, y:188)
                ///Pies
                Image("TenisDerMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .offset(x: -24, y:239)
                Image("TenisIzqMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .offset(x: 24, y:239)
                
                ///--------------------
               
                Image("TorsoMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 105)
                    .offset(x:0,y:10)
                Image("CabezaMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width:76)
                    .offset(x: 0, y: -77)
                Image("PupilaMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 6)
                    .offset(x: -8.9, y: -96)
                Image("PupilaMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 6)
                    .offset(x: 15, y: -96)
                
            }
            Spacer()
        }
    }
}

#Preview {
    MujerBase()
}
