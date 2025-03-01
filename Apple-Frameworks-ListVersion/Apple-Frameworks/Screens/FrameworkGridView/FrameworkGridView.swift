//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Deren Bozer on 3/1/25.
//



import SwiftUI



struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(MockData.frameworks, id: \.id) { framework in
                    NavigationLink(
                        destination: FrameworkDetailView(
                            framework: framework,
                            isShowingDetailView: $viewModel.isShowingDetailView)) {
                                FrameworkTitleView(framework: framework)
                            }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}



struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}


