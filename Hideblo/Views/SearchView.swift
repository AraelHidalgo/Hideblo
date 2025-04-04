//
//  SearchView.swift
//  Hideblo
//
//  Created by Arael Hidalgo Juárez on 03/04/25.
//


import SwiftUI

struct SearchView: View {
    @State private var activeID: String? = places.first?.id
    @State private var scrollPosition: ScrollPosition = .init(idType: String.self)
    @State private var isAnyCardScrolled: Bool = false
    var body: some View {
        GeometryReader{ geometry in
            ScrollView(.horizontal) {
                HStack(spacing: 4) {
                    ForEach(places) { place in
                        PlaceCardView(place: place, size: geometry.size){ isScrolled in
                            isAnyCardScrolled = isScrolled
                        }
                        .frame(width: geometry.size.width - 30)
                        ///Currently active to the top stack
                        .zIndex(activeID == place.id ? 1000 : 1)
                        
                    }
                }
                .scrollTargetLayout()
            }
            .safeAreaPadding(15)
            .scrollTargetBehavior(.viewAligned(limitBehavior: .always))
            .scrollPosition($scrollPosition)
            .scrollDisabled(isAnyCardScrolled)
            .onChange(of: scrollPosition.viewID(type: String.self)) { oldValue, newValue in
                activeID = newValue
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    ContentView()
}
