//
//  BeantownButtons.swift
//  Hideblo
//
//  Created by ADMIN UNACH on 03/04/25.
//

import SwiftUI
import MapKit

struct BeantownButtons: View {
    @Binding var position : MapCameraPosition
    @Binding var searchResults: [MKMapItem]
    var visibleRegion: MKCoordinateRegion?
    var body: some View {
        HStack{
            Button {
                search(for: "playground")
            }label: {
                Label("Playgrouns", systemImage: "arrow.up.trash")
               
            }
            .buttonStyle(.borderedProminent)
            
            Button {
                search(for: "beach")
            }label: {
                Label("Beaches", systemImage: "beach.umbrella")
            }
            .buttonStyle(.borderedProminent)
            
            Button{
                position = .region(.boston)
            } label: {
                Label("Boston", systemImage: "building.2")
            }
            .buttonStyle(.bordered)
            
            Button{
                position = .region(.northShore)
            } label: {
                Label("North Shore", systemImage: "water.waves")
            }
            .buttonStyle(.bordered)
            
        }
        .labelStyle(.iconOnly)
    }
    
    func search(for query: String){
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = query
        request.resultTypes = .pointOfInterest
        request.region = visibleRegion ?? MKCoordinateRegion(
            center: .canonSumidero,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.1))
        
        Task{
            let search = MKLocalSearch(request: request)
            let response = try? await search.start()
            searchResults = response?.mapItems ?? []
        }
    }
}

