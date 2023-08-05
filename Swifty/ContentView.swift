//
//  ContentView.swift
//  Swifty
//
//  Created by Alex Labanino on 7/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image(.image1)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(height: 300)
                .cornerRadius(20)
            
            VStack(alignment: .center) {
                
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                    .font(.subheadline)
                HStack(spacing: 12.0) {
                    VStack(alignment: .leading) {
                        Text("Size")
                            .foregroundColor(.secondary)
                        Text("1024x1024")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        Text("Type")
                            .foregroundColor(.secondary)
                        Text("Upscale")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        Text("Date")
                            .foregroundColor(.secondary)
                        Text("Today 5:19")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
                .frame(height: 44.0)
                
                HStack {
                    HStack {
                        Image(systemName: "ellipsis")
                        Divider()
                        Image(systemName: "sparkle.magnifyingglass")
                        Divider()
                        Image(systemName: "face.smiling")
                    }
                    .padding()
                    .frame(height: 44)
                    .overlay(
                        UnevenRoundedRectangle(cornerRadii: RectangleCornerRadii(topLeading: 0,
                                                bottomLeading: 20,
                                                bottomTrailing: 0,
                                                topTrailing: 20))
                            .strokeBorder(linearGradietn)
                    )
                    .offset(x: -20, y: 20)
                    
                    Spacer()
                    
                    Image(systemName: "square.and.arrow.down")
                        .padding()
                        .frame(height: 44)
                        .overlay(
                            UnevenRoundedRectangle(cornerRadii: RectangleCornerRadii(topLeading: 20,
                                                    bottomLeading: 0,
                                                    bottomTrailing: 20,
                                                    topTrailing: 0))
                                .strokeBorder(linearGradietn)
                        )
                        .offset(x: 20, y: 20)
                }
            }
            .padding(20.0)
            .background(.regularMaterial)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(linearGradietn)
            )
            .cornerRadius(20.0)
            .padding(20)
            .offset(y: 80)
        }
        .frame(maxWidth: 400)
        .padding(20)
        .dynamicTypeSize(.xSmall ... .xxLarge)
    }
    var linearGradietn: LinearGradient {
        LinearGradient(colors: [.clear, .primary.opacity(0.3), .clear], startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

#Preview {
    ContentView()
}
