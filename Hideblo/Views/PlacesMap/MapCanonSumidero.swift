//
//  MapCañonSumidero.swift
//  Hideblo
//
//  Created by Arael Hidalgo Juárez on 03/04/25.
//

import SwiftUI
import MapKit

extension CLLocationCoordinate2D {
    static let canonSumidero = CLLocationCoordinate2D(
        latitude: 16.916934,
        longitude: -92.094446
    )
    static let otro = CLLocationCoordinate2D(
        latitude: 16.90580, longitude: -92.09432
    )
}

extension MKCoordinateRegion{
    static let boston = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 42.360256,
            longitude: -71.057279),
        span: MKCoordinateSpan(
            latitudeDelta: 0.1,
            longitudeDelta: 0.1)
    )
    static let northShore = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 42.547408,
            longitude: -71.870085),
        span: MKCoordinateSpan(
            latitudeDelta: 0.5,
            longitudeDelta: 0.5)
    )
}
//Despues esta
struct MapCanonSumidero: View {
    @State private var position : MapCameraPosition = .automatic
    @State private var visibleRegion: MKCoordinateRegion?
    
    @State private var searchResults: [MKMapItem] = []
    @State private var selectedResult: MKMapItem?
    @State private var route : MKRoute?
    
    var body: some View {
        Map(position: $position, selection: $selectedResult){
            Annotation("Cañon", coordinate: .canonSumidero, anchor: .bottom){
                ZStack{
                    RoundedRectangle(cornerRadius: 5)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.secondary, lineWidth: 5)
                    Image(systemName: "location.fill")
                        .padding(5)
                }
            
            }
            .annotationTitles(.hidden)
           
            
            Marker("Lugar de destino", systemImage: "car.fill",
                   coordinate: .otro
            )
            .tint(.blue)
            
            ForEach(searchResults, id: \.self) { result in
                Marker(item: result)
            }
            .annotationTitles(.hidden)
            
            UserAnnotation()
            
            if let route {
                MapPolyline(route)
                    .stroke(.blue, lineWidth: 5)
            }
        }
        //.mapStyle(.hybrid(elevation: .realistic))
        
        .mapStyle(.standard(elevation: .realistic))
        .safeAreaInset(edge: .bottom) {
            HStack{
                Spacer()
                VStack (spacing: 0){
                    if let selectedResult{
                        ItemInfoView(selectedResult: selectedResult, route: route)
                            .frame(height: 128)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding([.top, .horizontal])
                    }
                    
                    BeantownButtons(position: $position, searchResults: $searchResults, visibleRegion: visibleRegion)
                        .padding(.top)
                }
                Spacer()
            }
            .background(.thinMaterial)
        }
        .onChange(of: searchResults){
            position = .automatic
        }
        .onChange(of: selectedResult){
            getDirections()
        }
        .onMapCameraChange { context in
            visibleRegion = context.region
        }
        .mapControls {
            MapUserLocationButton()
            MapCompass()
            MapScaleView()
        }
    }
    func getDirections() {
        route = nil
        guard let selectedResult else { return }
        
        let request = MKDirections.Request()
        request.source = MKMapItem(placemark: MKPlacemark(coordinate: .canonSumidero))
        request.destination = selectedResult
        
        Task {
            let directions = MKDirections(request: request)
            let response = try? await directions.calculate()
            route = response?.routes.first
        }
    }
}



#Preview {
    MapCanonSumidero()
}
