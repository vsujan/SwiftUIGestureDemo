//
//  ContentView.swift
//  SwiftUIGestureDemo
//
//  Created by Sujan Vaidya on 1/3/20.
//  Copyright © 2020 Sujan Vaidya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Image(systemName: "star.circle.fill")
            .font(.system(size: 200))
            .animation(.easeInOut)
            .foregroundColor(.green)
            .scaleEffect(isPressed ? 0.5 : 1.0)
            .gesture(
                TapGesture()
                    .onEnded({
                        self.isPressed.toggle()
                    })
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
