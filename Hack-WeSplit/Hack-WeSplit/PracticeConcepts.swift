//
//  PracticeConcepts.swift
//  Hack-WeSplit
//
//  Created by Deren Bozer on 3/14/25.
//

import SwiftUI

struct PracticeConcepts: View {
    @State private var tapCount = 0
    
    @State private var name = ""
    
    let students = ["Harry", "Ron", "Hermione"]
    
    @State private var selectedStudent = "Harry"
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text("Hello mon")
                }
                Section {
                    Button("Count: \(tapCount)") {
                        tapCount += 1
                    }
                    TextField("Name", text: $name)
                }
                Section {
                    Text("Your name is: \(name)")
                }
                Section {
                    Picker("Select a Student", selection: $selectedStudent) {
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                    }
                }
                Section {
                    ForEach(0 ..< 10) {
                        Text("Row \($0)")
                    }
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    PracticeConcepts()
}
