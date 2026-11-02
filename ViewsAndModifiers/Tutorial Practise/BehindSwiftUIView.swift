//
//  BehindSwiftUIView.swift
//  ViewsAndModifiers
//
//  Created by Shubham Kashyap on 02/11/26.
//

import SwiftUI

struct BehindSwiftUIView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .tint(.primary)
            
            Text("Welcome to iOS Developement")
        }
//        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.red.gradient)

    }
}

#Preview {
    BehindSwiftUIView()
}
