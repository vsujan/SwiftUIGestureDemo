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
    @GestureState private var longPressTap = false
    
    var body: some View {
        Image(systemName: "star.circle.fill")
            .font(.system(size: 200))
            .animation(.easeInOut)
            .foregroundColor(.green)
            .scaleEffect(isPressed ? 0.5 : 1.0)
            .opacity(longPressTap ? 0.4 : 1.0)
            .gesture(
                LongPressGesture(minimumDuration: 1.0)
                    .updating($longPressTap, body: {(currentState, state, transaction) in
                        state = currentState
                    })
                    .onEnded({_ in
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
