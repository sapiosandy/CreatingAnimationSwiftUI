//
//  ContentView.swift
//  CreatingAnimationSwiftUI
//
//  Created by Sandra Gomez on 5/27/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var moveDistance: CGFloat = 0
    @State var flag = true
    
    var body: some View {
        VStack {
          Rectangle()
                .foregroundColor(Color.yellow)
                .frame(width: 250, height: 150)
                .offset(y: moveDistance)
                .animation(.default, value: flag)
            
            Button("Animate") {
                if flag {
                    moveDistance -= 175
                    flag = false
                } else {
                    moveDistance += 175
                    flag = true
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
