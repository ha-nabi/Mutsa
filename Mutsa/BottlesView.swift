//
//  BottlesView.swift
//  test
//
//  Created by 강치우 on 11/2/23.
//

import SwiftUI

struct BottlesView: View {
    // View Properties
    @State private var searchText: String = ""
    var body: some View {
        ScrollView() {
            VStack(alignment: .leading) {
                Text("바틀즈")
                    .font(.title2)
                    .foregroundStyle(.primary)
                    .fontWeight(.semibold)
                    .padding(.bottom, 5)
                    .padding(.top, 10)
                Rectangle()
                    .frame(width: 350, height: 0.8)
                    .foregroundStyle(.black.opacity(0.5))
                Text("내 주변의 바틀샵에 대한 정보를 \n제공하고 합리적인 구매를 \n위한 가격 비교 및 픽업 예약 서비스.")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.bottom, 15)
                    .padding(.top, 5)
                    .foregroundStyle(Color.gray)
                    .foregroundColor(.black)
            }
            .padding(.leading)
            .navigationTitle("Bottles")
            
            
            // Parallax Carouael
            GeometryReader(content: { geometry in
                let size = geometry.size
                
                ScrollView(.horizontal) {
                    HStack(spacing: 5) {
                        ForEach(BottlesCards) { card in
                            // In order to Moe the Card in Revers Direction (Parallax Effect)
                            GeometryReader(content: { proxy in
                                let cardSize = proxy.size
                                
                                Image(card.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: cardSize.width, height: cardSize.height)
                                    .overlay {
                                        OverlayView(card)
                                    }
                                    .clipShape(.rect(cornerRadius: 15))
                                    .shadow(color: .black.opacity(0.25), radius: 8, x: 5, y: 10)
                            })
                            .frame(width: size.width - 80, height: size.height - 0)
                            // Scroll Animation
                            .scrollTransition(.interactive, axis: .horizontal) {
                                view, phase in
                                view
                                    .scaleEffect(phase.isIdentity ? 1 : 0.95)
                                
                            }
                        }
                    }
                    .padding(.horizontal, 30)
                    .scrollTargetLayout()
                    .frame(height: size.height, alignment: .top)
                }
                .scrollTargetBehavior(.viewAligned)
                .scrollIndicators(.hidden)
            })
            .frame(height: 500)
            .padding(.horizontal, -15.0)
            .padding(.top, 2)
        }
    }
}

// Overlay View
@ViewBuilder
func OverlayView(_ card: BottlesCard) -> some View {
    ZStack(alignment: .bottomLeading, content: {
        LinearGradient(colors: [
            .clear,
            .clear,
            .clear,
            .clear,
            .clear,
            .black.opacity(0.1),
            .black.opacity(0.5),
            .black
        ], startPoint: .top, endPoint: .bottom)
        
        VStack(alignment: .leading, spacing: 4, content: {
            Text(card.title)
                .font(.title2)
                .fontWeight(.black)
                .foregroundStyle(.white)
            
            Text(card.subTitle)
                .font(.callout)
                .foregroundStyle(.white.opacity(0.8))
        })
        .padding(20)
    })
}



#Preview {
    BottlesView()
}
