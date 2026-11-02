//
//  EnvironmentModifiers.swift
//  ViewsAndModifiers
//
//  Created by Shubham Kashyap on 02/11/26.
//

import SwiftUI

struct EnvironmentModifiers: View {
    var body: some View {
        VStack {
            Text("Some text here 1")
                .blur(radius: 3) // blur 3 will be overwritten by blur 6
            Text("Some text here 2")
                .font(.body) // Individual modifier
            Text("Some text here 3")
            Text("Some text here 4")
                .font(.title3)
        }
        .font(.largeTitle) // This will act as environment modifier // global modifier
        .blur(radius: 6) // // blur 6 will be overwrite by blur 3
    }
}

#Preview {
    EnvironmentModifiers()
}
