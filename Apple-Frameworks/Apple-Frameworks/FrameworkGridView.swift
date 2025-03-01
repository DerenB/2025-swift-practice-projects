//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Deren Bozer on 3/1/25.
//



import SwiftUI



struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        FrameworkTitleView(framework: framework)
                    }
                }
                .navigationTitle("🍎 Frameworks")
            }
        }
    }
}



struct FrameworkTitleView: View {
    
    let framework: FrameworkObj
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}



struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}




