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
                gradient: Gradient(colors: [.blue, Color("LightBlue")]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
                .edgesIgnoringSafeArea(.all)
            
            /// Vertical Content Stack
            VStack {
                
                /// City Text
                Text("Cupertine, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(Color.white)
                    .padding()
                
                /// Weather Icon & Text Stack
                VStack(spacing: 8) {
                    
                    /// Weather Icon
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    /// Temperature Text
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(Color.white)
                    
                }
                .padding(.bottom, 40)
                
                
                
                /// Daily Temp Stack
                HStack(spacing: 20) {
                    WeatherDayView(
                        dayOfWeek: "TUE",
                        imageName: "cloud.sun.fill",
                        temperature: 74
                    )
                    
                    WeatherDayView(
                        dayOfWeek: "WED",
                        imageName: "sun.max.fill",
                        temperature: 88
                    )
                    
                    WeatherDayView(
                        dayOfWeek: "THU",
                        imageName: "wind.snow",
                        temperature: 55
                    )
                    
                    WeatherDayView(
                        dayOfWeek: "FRI",
                        imageName: "sunset.fill",
                        temperature: 60
                    )
                    
                    WeatherDayView(
                        dayOfWeek: "SAT",
                        imageName: "snow",
                        temperature: 25
                    )
                }
                
                /// Spacer
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}


struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            /// Day Text
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(Color.white)
            
            /// Day Weather
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            /// Temperature Text
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(Color.white)
        }
    }
}






