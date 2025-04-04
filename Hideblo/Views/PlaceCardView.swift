//
//  BookCardView.swift
//  Hideblo
//
//  Created by Arael Hidalgo Juárez on 02/04/25.
//


import SwiftUI
import SceneKit

struct PlaceCardView: View {
    var place: Place
    var parentHorizontalPadding: CGFloat = 15
    var size: CGSize
    var isScrolled: (Bool) -> ()
    // Scroll animacion propiedades
    @State private var scrollProperties: ScrollGeometry = .init(
        contentOffset: .zero,
        contentSize: .zero,
        contentInsets: .init(),
        containerSize: .zero
    )
    @State private var scrollPosition : ScrollPosition = .init()
    @State private var isPageScrolled : Bool = false
    @State var scene: SCNScene? = .init(named: "MacuahuiltSCN.scn")
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 15) {
                TopCarView()
                    .containerRelativeFrame(.vertical) { value, _ in
                        value * 0.9
                    }
                
                ZStack {
                    // Boton para realizar las conversaciones
                    OtherTextContents()
                        .padding(.horizontal, 15)
                        .frame(maxWidth: size.width - (parentHorizontalPadding * 2))
                        .padding(.bottom, 50)
                }
            }
            /// To achieve the zoom effect when scrolling, simpli apply a negative scale to the horizontal padding, In our case
            /// the horizontal padding is set to 15
            .padding(.horizontal, -parentHorizontalPadding * scrollProperties.topInsetProgress)
        }
        .scrollPosition($scrollPosition)
        .scrollClipDisabled()
        .onScrollGeometryChange(for: ScrollGeometry.self, of: {
            $0
        }, action: { oldValue, newValue in
            scrollProperties = newValue
            isPageScrolled = newValue.offsetY > 0
        })
        .scrollIndicators(.hidden)
        .scrollTargetBehavior(ScrollEnd(topInset: scrollProperties.contentInsets.top))
        .onChange(of: isPageScrolled, { oldValue, newValue in
            isScrolled(newValue)
        })
        .background{
            UnevenRoundedRectangle(topLeadingRadius: 15, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 15)
                .fill(.background)
                .ignoresSafeArea(.all, edges: .bottom)
                .offset(y: scrollProperties.offsetY > 0 ? 0 : -scrollProperties.offsetY)
                .padding(.horizontal, -parentHorizontalPadding * scrollProperties.topInsetProgress)
        }
    }
    
    //Carta de arriba
    func TopCarView() -> some View {
        VStack(spacing: 15) {
            FixedHeaderView()
            
            //Book main Contents
            Image(place.thumbnail)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.top, 10)
            
            Text(place.name)
                .serifText(.title2, weight: .bold)
            
            Button{
                
            } label: {
                HStack(spacing: 6){
                    Text(place.location)
                    
                    Image(systemName: "map")
                        .font(.callout)
                }
            }
            .padding(.top, -5)
            
        
            Label(place.history, systemImage: "mountain.2")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
            
            VStack(alignment: .leading, spacing: 4){
                HStack(spacing: 4){
                    Text("Explora y conversa sobre el \(place.name)")
                        .fontWeight(.semibold)
                
                }
                
                Text("Dificultad: Elevado")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                
                HStack(spacing: 10){
                    Button{
                        
                    }label:{
                        Label("Conoce", systemImage: "info.circle.fill")
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 5)
                    }
                    .tint(.white.opacity(0.2))
                    
                    NavigationLink(destination: place.viewType.body) {
                        Label("¡Explora!", systemImage: "shoeprints.fill")
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 5)
                    }
                    .foregroundStyle(.black)
                    .tint(.white)
                }
                .buttonStyle(.borderedProminent)
                .padding(.top, 5)
            }
            .padding(15)
            .background(.white.opacity(0.2), in: .rect(cornerRadius: 15))
        }
        .foregroundStyle(.white)
        .padding(15)
        .frame(maxWidth: size.width - (parentHorizontalPadding * 2))
        .frame(maxWidth: .infinity)
        .background {
            Rectangle()
                .fill(place.color.gradient)
        }
        .clipShape(UnevenRoundedRectangle(topLeadingRadius: 15, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 15))
    }
    
    //Otros contenedores
    func OtherTextContents() -> some View {
        VStack(alignment: .leading, spacing: 8){
            Text("Historia de nuestro legado al alcance de tu mano... y unos pasos.")
         
                .font(.custom("Josefin Sans", size: 25))
            
            
            HStack(spacing: 5) {
                Text(place.historyComplete)
                    .font(.custom("Inter", size: 10))
                    .foregroundStyle(.secondary)
                    
                place.personaje
                    .scaleEffect(CGSize(width: 0.4, height: 0.4))
            }
            
            Text("Historia:")
                .serifText(.title3, weight: .semibold)
                .padding(.top, 15)
            
            // Mock Requirements View
           /* VStack(alignment: .leading, spacing: 4) {
                Text("Apple Books")
                
                Text("Requires ioS 17 or macos 10.15 or later")
                    .foregroundStyle(.secondary)
                
                Text("¡Books")
                    .padding(.top, 5)
                
                Text("Requires ¡Books 3 and iOs 4 or later")
                    .foregroundStyle(.secondary)
                
                Text("Version")
                    .font(.title3)
                    .fontDesign(.serif)
                    .fontWeight(.semibold)
                    .padding(.top, 25)
                
                Text("Update mar19 2023")
                    .foregroundStyle(.secondary)
                
            }
            .padding(.top, 5)
            */
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 10)
    }
    
    //Fixed header view
    func FixedHeaderView() -> some View {
        HStack(spacing: 10) {
            Button {
                withAnimation(.easeInOut(duration: 0.4)){
                    scrollPosition.scrollTo(edge: .top)
                }
            } label: {
                
                Image(systemName: "xmark.circle.fill")
            }
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "ellipsis.circle.fill")
            }
        }
        .buttonStyle(.plain)
        .font(.title)
        .foregroundStyle(.white, .white.tertiary)
        .background{
            GeometryReader { geometry in
                TransparentBlurView()
                    .frame(height: scrollProperties.contentInsets.top + 50)
                    .blur(radius: 10, opaque: false)
                    .frame(height: geometry.size.height, alignment: .bottom)
            }
            .opacity(scrollProperties.topInsetProgress)
        }
        .padding(.horizontal, -parentHorizontalPadding * scrollProperties.topInsetProgress)
        .offset(y: scrollProperties.offsetY < 20 ? 0 : scrollProperties.offsetY - 20)
        .zIndex(1000)
    }
}

#Preview {
    GeometryReader { geometry in
        PlaceCardView(place: places[0], size: geometry.size) { _ in
            
        }
        .padding(.horizontal, 15)
    }
    .background(.gray.opacity(0.15))
}

struct ScrollEnd : ScrollTargetBehavior{
    var topInset: CGFloat
    func updateTarget(_ target: inout ScrollTarget, context: TargetContext) {
        if target.rect.minY < topInset {
            target.rect.origin = .zero
        }
    }
}

extension ScrollGeometry {
    var offsetY: CGFloat {
        contentOffset.y + contentInsets.top
    }
    
    var topInsetProgress: CGFloat {
        guard contentInsets.top > 0 else { return 0 }
        ///This will provide the progress value when the top of the scrollview reaches the top of the screen
        ///In this context, 0 represetns the initial position, and 1 indicates that the top of the scrollview has reached the top of the screen!
        return max(min(offsetY / contentInsets.top,1), 0)
    }
}

extension View {
    func serifText(_ font: Font, weight: Font.Weight) -> some View {
        self
            .font(font)
            .fontWeight(weight)
            .fontDesign(.serif)
    }
}
