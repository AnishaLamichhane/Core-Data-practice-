//
//  @BindingProperty.swift
//  project 11
//
//  Created by Anisha Lamichhane on 6/2/21.
//

import SwiftUI
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

struct _BindingProperty: View {
    @State private var rememberMe = false

    var body: some View {
        VStack {
            PushButton(title: "Remember Me", isOn: $rememberMe)
            Text(rememberMe ? "On" : "Off")
        }
    }
}

struct _BindingProperty_Previews: PreviewProvider {
    static var previews: some View {
        _BindingProperty()
    }
}
