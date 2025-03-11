//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Deren Bozer on 3/1/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: FrameworkObj
    
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
                // Label("Learn More", systemImage: "book.fill")
            }
            .fullScreenCover(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString)
                           ?? URL(string: "https://developer.apple.com/")!)
            })
            /*
            .sheet(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString)
                           ?? URL(string: "https://developer.apple.com/")!)
            })
            */
            
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, 
                        isShowingDetailView: .constant(false))
}
