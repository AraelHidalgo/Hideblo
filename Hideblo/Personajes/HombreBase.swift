//
//  Personaje2.swift
//  kkj
//
//  Created by Arael Hidalgo Juárez on 25/03/25.
//

import SwiftUI

struct HombreBase: View {
    var body: some View {
        ZStack{
            Image("PiernaTenisDerHombre")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .offset(x: -28,y:260)
            Image("PiernaTenisIzqHombre")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .offset(x: 28,y:260)
            Image("MusloDerHombre")
                .resizable()
                .scaledToFit()
                .frame(width: 46)
                .offset(x:-18,y:144)
                .rotationEffect(.degrees(2))
            Image("MusloIzqHombre")
                .resizable()
                .scaledToFit()
                .frame(width: 46)
                .offset(x:18,y:144)
                .rotationEffect(.degrees(-2))
            
            //Piernas
            ZStack{
                Image("ManoIzqNormalHombre")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22)
                    .offset(x:76,y:123)
                    .rotationEffect(.degrees(-0))
                Image("AntebrazoIzqHombre")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .offset(x:72,y:62)
                    .rotationEffect(.degrees(-0))
            }
            
            Image("BrazoIzqHombre")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .offset(x:60,y:-14)
            Image("ManoDerNormalHombre")
                .resizable()
                .scaledToFit()
                .frame(width: 22)
                .offset(x:-76,y:123)
                .rotationEffect(.degrees(-0))
            Image("AntebrazoDerHombre")
                .resizable()
                .scaledToFit()
                .frame(width: 30)
                .offset(x:-72,y:62)
                .rotationEffect(.degrees(-0))
            Image("BrazoDerHombre")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .offset(x:-60,y:-14)
            Image("TorsoHombre")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
            Image("CabezaHombre")
                .resizable()
                .scaledToFit()
                .frame(width: 75)
                .offset(y:-121)
            Image("CejaDerHombre")
                .resizable()
                .scaledToFit()
                .frame(width: 17)
                .offset(x:-13,y:-122)
            Image("CejaIzqHombre")
                .resizable()
                .scaledToFit()
                .frame(width: 17)
                .offset(x:13,y:-122)
            Image("PestañaIzqHombre")
                .resizable()
                .scaledToFit()
                .frame(width: 13)
                .offset(x:13,y:-117)
            Image("PestañaDerHombre")
                .resizable()
                .scaledToFit()
                .frame(width: 13)
                .offset(x:-12.4,y:-117)
            Image("PupilaHombre")
                .resizable()
                .scaledToFit()
                .frame(width: 7)
                .offset(x:12,y:-115)
            Image("PupilaHombre")
                .resizable()
                .scaledToFit()
                .frame(width: 7)
                .offset(x:-12,y:-115)
           
            
            
        }
    }
}

#Preview {
    HombreBase()
}
