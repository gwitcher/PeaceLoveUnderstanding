//
//  ContentView.swift
//  PeaceLoveUnderstanding
//
//  Created by Gabe Witcher on 3/4/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(Color.purple)
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.tint)
                .frame(width: 300, height: 300)
               
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(Color.purple)
                
            
            Spacer()
            
            HStack {
                Button("Peace") {
                    message = "Peace"
                    imageName = "peacesign"
                }
                Button("Love") {
                    message = "Love"
                    imageName = "heart"
                }
                Button("Understanding") {
                    message = "Understanding"
                    imageName = "lightbulb"
                }
               
            }
            .buttonStyle(.borderedProminent)
            //.font(.title2)
            //.fontWeight(.bold)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
