//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Deren Bozer on 3/1/25.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundStyle(Color.white)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .clipShape(.rect(cornerRadius: 10.0))
    }
}

#Preview {
    AFButton(title: "Example")
}
