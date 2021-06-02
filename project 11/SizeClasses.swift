//
//  SizeClasses.swift
//  project 11
//
//  Created by Anisha Lamichhane on 6/2/21.
//

import SwiftUI

struct SizeClasses: View {
    @Environment(\.horizontalSizeClass) var sizeClass
    var body: some View {
        if sizeClass == .compact {
            return AnyView ( HStack {
                Text("Active size classes")
                Text("COMPACT")
            }
            .font(.largeTitle)
            )
        } else {
            return AnyView ( HStack {
                Text("Active size classes")
                Text("REGULAR")
            }
            .font(.largeTitle)
            )
        }
    }
}

struct SizeClasses_Previews: PreviewProvider {
    static var previews: some View {
        SizeClasses()
    }
}
