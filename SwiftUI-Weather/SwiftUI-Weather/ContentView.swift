//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Deren Bozer on 2/23/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        
        /// Main Vertical Stack
        ZStack {
            
            /// Background Gradient
            BackgroundView(isNight: $isNight)

            /// Vertical Content Stack
            VStack {
                
                /// City Text
                CityTextView(cityName: "Cupertino, CA")
                
                /// Weather Icon & Text Stack
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 76)
                
                /// Daily Temp Stack
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 88)
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "wind.snow",
                                   temperature: 55)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "sunset.fill",
                                   temperature: 60)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "snow",
                                   temperature: 25)
                }
                
                /// Spacer
                Spacer()
                
                
                /// Button
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
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



/// View for Daily Weather Columns
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



/// View for Background Gradient
struct BackgroundView: View {
    
    /// Name has to match the @state variable at top
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [isNight ? .black : .blue,
                                        isNight ? .gray : Color("LightBlue")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)
    }
}



/// City Name View
struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(Color.white)
            .padding()
    }
}



/// Main Weather
struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            
            /// Weather Icon
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            /// Temperature Text
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(Color.white)
            
        }
        .padding(.bottom, 40)
    }
}




