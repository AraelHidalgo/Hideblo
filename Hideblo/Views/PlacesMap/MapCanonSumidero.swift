//
//  MapCanonSumidero.swift
//  Hideblo
//

import SwiftUI
import MapKit

extension CLLocationCoordinate2D {
    static let canonSumidero = CLLocationCoordinate2D(latitude: 16.916934, longitude: -92.094446)
    static let otro = CLLocationCoordinate2D(latitude: 16.90580, longitude: -92.09432)
}

class MapState: ObservableObject {
    @Published var selectedResult: MKMapItem?
    @Published var route: MKRoute?
    @Published var showLookAround: Bool = false  // Nueva variable para controlar Look Around
}

struct MapCanonSumidero: View {
    @StateObject private var mapState = MapState()
    @State private var position: MapCameraPosition = .automatic

    var destinationItem: MKMapItem {
        let placemark = MKPlacemark(coordinate: .otro)
        let item = MKMapItem(placemark: placemark)
        item.name = "Lugar de destino"
        return item
    }

    var body: some View {
        Map(position: $position, selection: $mapState.selectedResult) {
            Annotation("Cañón", coordinate: .canonSumidero, anchor: .bottom) {
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(.background)
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.secondary, lineWidth: 5)
                    Image(systemName: "location.fill")
                        .padding(5)
                }
            }
            .annotationTitles(.hidden)

            Annotation("Lugar de destino", coordinate: .otro) {
                Button {
                    mapState.selectedResult = destinationItem
                    mapState.showLookAround = true  // Activamos Look Around
                } label: {
                    VStack {
                        Image(systemName: "car.fill")
                            .foregroundColor(.blue)
                            .font(.title)
                        Text("Destino")
                            .font(.caption)
                            .padding(5)
                            .background(.ultraThinMaterial)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                    }
                }
            }

            UserAnnotation()

            if let route = mapState.route {
                MapPolyline(route)
                    .stroke(.blue, lineWidth: 5)
            }
        }
        .mapStyle(.standard(elevation: .realistic))
        .safeAreaInset(edge: .bottom) {
            VStack(spacing: 0) {
                if let selectedResult = mapState.selectedResult {
                    ItemInfoView(selectedResult: selectedResult, route: mapState.route)
                        .frame(height: 128)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding([.top, .horizontal])
                }

                if mapState.showLookAround {  // Mostramos Look Around solo si está activado
                    LookAroundPreview(item: mapState.selectedResult!)
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding([.horizontal, .bottom])
                }

                Button {
                    mapState.showLookAround.toggle()  // Alternamos Look Around
                } label: {
                    Label(mapState.showLookAround ? "Ocultar Look Around" : "Mostrar Look Around", systemImage: "eye")
                }
                .buttonStyle(.borderedProminent)
                .padding(.top)
            }
            .background(.thinMaterial)
        }
        .onChange(of: mapState.selectedResult) { _ in
            getDirections()
        }
        .mapControls {
            MapUserLocationButton()
            MapCompass()
            MapScaleView()
        }
    }

    func getDirections() {
        mapState.route = nil
        guard let selectedResult = mapState.selectedResult else { return }

        let request = MKDirections.Request()
        request.source = MKMapItem.forCurrentLocation()
        request.destination = selectedResult

        Task {
            let directions = MKDirections(request: request)
            if let response = try? await directions.calculate() {
                mapState.route = response.routes.first
            }
        }
    }
}

#Preview {
    MapCanonSumidero()
}
