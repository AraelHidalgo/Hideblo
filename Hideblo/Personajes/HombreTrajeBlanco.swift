//
//  HombreTrajeBlanco.swift
//  Hideblo
//
//  Created by Arael Hidalgo Juárez on 03/04/25.
//

import SwiftUI

struct HombreTrajeBlanco: View {
    var body: some View {
        ZStack{
            Image("PiernaPieDerHombre2")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .offset(x: -30,y:257)
            Image("PiernaPieIzqHombre2")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .offset(x: 30,y:257)
            Image("MusloDerHombre2")
                .resizable()
                .scaledToFit()
                .frame(width: 46)
                .offset(x:-18,y:144)
                .rotationEffect(.degrees(2))
            Image("MusloIzqHombre2")
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
                    .offset(x:70,y:100)
                    .rotationEffect(.degrees(-0))
                Image("AntebrazoIzqHombre2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 33)
                    .offset(x:71,y:42)
                    .rotationEffect(.degrees(3))
            }
            Image("BrazoIzqHombre2")
                .resizable()
                .scaledToFit()
                .frame(width: 42)
                .offset(x:60,y:-20)
            Image("ManoDerNormalHombre")
                .resizable()
                .scaledToFit()
                .frame(width: 22)
                .offset(x:-70,y:100)
                .rotationEffect(.degrees(-0))
            Image("AntebrazoDerHombre2")
                .resizable()
                .scaledToFit()
                .frame(width: 33)
                .offset(x:-71,y:42)
                .rotationEffect(.degrees(-3))
            Image("BrazoDerHombre2")
                .resizable()
                .scaledToFit()
                .frame(width: 42)
                .offset(x:-60,y:-20)
            Image("TorsoHombre2")
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
    HombreTrajeBlanco()
}
