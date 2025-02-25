//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Deren Bozer on 2/24/25.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .clipShape(.rect(cornerRadius: 10.0))
    }
}
