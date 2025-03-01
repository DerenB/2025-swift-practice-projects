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
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
                .navigationTitle("🍎 Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    FrameworkDetailView(
                        framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                        isShowingDetailView: $viewModel.isShowingDetailView)
                }
            }
        }
    }
}



struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}


