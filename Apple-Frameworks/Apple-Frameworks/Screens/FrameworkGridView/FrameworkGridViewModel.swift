//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Deren Bozer on 3/1/25.
//


import SwiftUI


final class FrameworkGridViewModel: ObservableObject {
    
    
    var selectedFramework: FrameworkObj? {
        didSet { isShowingDetailView = true }
    }
    
    
    @Published var isShowingDetailView = false
    
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    
}

