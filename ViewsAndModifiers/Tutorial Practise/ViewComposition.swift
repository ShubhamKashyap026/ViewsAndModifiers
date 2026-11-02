//
//  ViewComposition.swift
//  ViewsAndModifiers
//
//  Created by Shubham Kashyap on 02/11/26.
//

import SwiftUI

struct ViewComposition: View {
    // Properties
    
    // Body
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First one")
            CapsuleText(text: "Second one")
        }
    }
}

// helps in breaking the code into smaller section
struct CapsuleText: View {
    // Properties
    var text: String

    // body
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}

#Preview {
    ViewComposition()
}
