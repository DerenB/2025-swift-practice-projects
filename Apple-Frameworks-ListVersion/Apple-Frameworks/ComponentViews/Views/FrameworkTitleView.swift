//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Deren Bozer on 3/1/25.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: FrameworkObj
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
