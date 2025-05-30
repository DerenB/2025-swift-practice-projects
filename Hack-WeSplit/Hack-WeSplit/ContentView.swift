//
//  ContentView.swift
//  Hack-WeSplit
//
//  Created by Deren Bozer on 3/12/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [0,10,15,20,25]
    
    var body: some View {
        
        Form {
            Section {
                TextField("Amount",
                          value: $checkAmount,
                          format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        }
    }
}

#Preview {
    ContentView()
}
