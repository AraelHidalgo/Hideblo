//
//  MujerTrajeBlanco.swift
//  Hideblo
//
//  Created by Arael Hidalgo Juárez on 03/04/25.
//

import SwiftUI

struct MujerTrajeBlanco: View {
    var body: some View {
        
        VStack {
            Spacer()
            ZStack{
                Image("ManoDerMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width:17)
                    .offset(x:-49,y:20)
                    .rotationEffect(.degrees(0))
                Image("ManoIzqMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width:17)
                    .offset(x:49,y:20)
                    .rotationEffect(.degrees(-0))
                Image("AntebrazoDerMujer2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .offset(x:-45,y: -25)
                    .rotationEffect(.degrees(0))
                Image("AntebrazoIzqMujer2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .offset(x:45,y: -25)
                    .rotationEffect(.degrees(0))
                Image("BrazoDerMujer2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 26)
                    .offset(x: -39,y:-80)
                    .rotationEffect(.degrees(0))
                Image("BrazoIzqMujer2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 26)
                    .offset(x: 39,y: -80)
                    .rotationEffect(.degrees(0))
           
             
                //Piernas y pelvis
          
                Image("PiernaDerMujer2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .offset(x:-22.8, y:178)
                Image("PiernaIzqMujer2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .offset(x:22.8, y:178)
               
                
                ///--------------------
               
                Image("TorsoMujer2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80)
                    .offset(x:0,y:0)
                Image("CabezaMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width:76)
                    .offset(x: -2, y: -135)
                Image("PupilaMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 6)
                    .offset(x: -11, y: -154)
                Image("PupilaMujer")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 6)
                    .offset(x: 13, y: -154)
                
            }
            Spacer()
        }
    }
}

#Preview {
    MujerTrajeBlanco()
}
