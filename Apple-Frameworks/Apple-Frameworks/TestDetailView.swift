//
//  TestDetailView.swift
//  Apple-Frameworks
//
//  Created by Deren Bozer on 3/1/25.
//

import SwiftUI

struct TestDetailView: View {
    var body: some View {
        VStack {
            
            Image("swiftui")
                .resizable()
                .frame(width: 90, height: 90)
                .padding(.bottom, 10)
            
            Text("SwiftUI")
                .font(.title2)
                .bold()
                .padding(.bottom, 40)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra lorem vitae augue imperdiet convallis. Nam sit amet sagittis ligula. Duis vitae neque a dolor lobortis dignissim.")
                .padding()
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra lorem vitae augue imperdiet convallis. Nam sit amet sagittis ligula. Duis vitae neque a dolor lobortis dignissim. Quisque luctus diam non justo eleifend, sit amet gravida orci aliquam. Mauris nec cursus erat.")
                .padding([.bottom], 40)
                .padding()
            
            Button(action: Hello) {
                Text("Learn More")
                    .bold()
            }
            .frame(width: 300, height: 50)
            .foregroundStyle(Color.white)
            .background(Color.red)
            .clipShape(.rect(cornerRadius: 10.0))
        }
    }
}

func Hello() {
    print("Hello")
}

#Preview {
    TestDetailView()
}
