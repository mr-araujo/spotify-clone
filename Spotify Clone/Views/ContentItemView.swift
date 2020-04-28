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
            VStack {
                Spacer()
                    .frame(height: 50)
                
                Image(systemName:"music.note")
                Text("Title")
                Text("Subtitle")
                
                Spacer()
            }
            
            ScrollView {
                VStack(spacing:0) {
                    HStack {
                        Spacer()
                            .frame(height: 200)
                            .background(Color.red.opacity(0.3))
                    }
                    
                    VStack {
                        ForEach(0..<30) { index in
                            HStack {
                                Text("\(index)")
                                    .foregroundColor(.white)
                                Spacer()
                            }
                        }
                    }.background(Color.black)
                }.background(Color.yellow.opacity(0.2))
            }
        }
    }
}

struct ContentItemView_Previews: PreviewProvider {
    static var previews: some View {
        ContentItemView()
    }
}
