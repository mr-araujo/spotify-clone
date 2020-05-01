//
//  ContentItemView.swift
//  Spotify Clone
//
//  Created by Murillo R. Araujo on 28/04/20.
//  Copyright © 2020 MR de Araujo. All rights reserved.
//

import SwiftUI

struct ContentItemView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient:
            Gradient(colors: [
                Color.black.opacity(0.05),
                Color.black.opacity(0.05),
                Color.black.opacity(0.05),
                Color.black,
                Color.black
            ]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                    .frame(height: 50)
                
                Image("music")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Text("Pop Korea")
                    .foregroundColor(.black)
                    .font(.system(size: 24, weight: .bold))
                
                Text("Subtitle")
                    .foregroundColor(.black)
                    .font(.system(size: 16, weight: .medium))
                
                Spacer()
            }
            
            ScrollView {
                VStack(spacing:0) {
                    HStack {
                        Spacer()
                            .frame(height: 400)
                            .background(LinearGradient(gradient:
                                Gradient(colors: [
                                    Color.clear,
                                    Color.clear,
                                    Color.clear,
                                    Color.clear,
                                    Color.black
                                ]), startPoint: .top, endPoint: .bottom))
                    }
                    
                    VStack {
                        ForEach(0..<30) { index in
                            HStack {
                                Image(systemName: "pause")
                                    .padding(.trailing, 10)
                                Text("Album track \(index + 1)")
                                Spacer()
                                Image(systemName: "ellipsis")
                            }
                            .padding(15)
                            .background(Color.black)
                            .foregroundColor(.white)
                        }
                    }.background(Color.black)
                }.background(Color.clear)
            }
        }
    }
}

struct ContentItemView_Previews: PreviewProvider {
    static var previews: some View {
        ContentItemView()
    }
}
