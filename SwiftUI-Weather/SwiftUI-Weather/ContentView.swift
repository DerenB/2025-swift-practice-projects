//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Deren Bozer on 2/23/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        /// Main Vertical Stack
        ZStack {
            
            /// Background Gradient
            LinearGradient(
                gradient: Gradient(colors: [.blue, .white]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
                .edgesIgnoringSafeArea(.all)
            
            /// Vertical Content Stack
            VStack {
                Text("Cupertine, CA")
            }
        }
    }
}

#Preview {
    ContentView()
}
