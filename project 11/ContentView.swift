//
//  ContentView.swift
//  project 11
//
//  Created by Anisha Lamichhane on 6/1/21.
//

import SwiftUI
import CoreData


struct PushButton: View {
    let title: String
    @Binding var isOn: Bool
    
    var onColors = [Color.red, Color.yellow]
    var offColors = [Color(white: 0.4), Color(white: 0.6)]
    
    var body: some View {
        Button(title) {
            self.isOn.toggle()
        }
        .padding().background(LinearGradient(gradient: Gradient(colors: isOn ? onColors: offColors), startPoint: .top, endPoint: .bottom))
        .foregroundColor(.white)
        .clipShape(Capsule())
        .shadow(radius: isOn ? 0: 5)
    }
}


struct ContentView: View {
@State private var rememberMe = false

    var body: some View {
        VStack {
            PushButton(title: "Remember Me", isOn: $rememberMe)
            Text(rememberMe ? "On" : "Off")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
