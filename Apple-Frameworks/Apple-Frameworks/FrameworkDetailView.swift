//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Deren Bozer on 3/1/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: FrameworkObj
    
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
