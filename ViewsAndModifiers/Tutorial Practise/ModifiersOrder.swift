//
//  ModifiersOrder.swift
//  ViewsAndModifiers
//
//  Created by Shubham Kashyap on 02/11/26.
//

import SwiftUI

struct ModifiersOrder: View {
    var body: some View {
        VStack(spacing: 40) {
            Button("Press button") {
                // nothing to honest
                print(type(of: self.body))
            }
            .background(.red) // Modifiers are top to bottom // Each one applies new struct when applied
            .frame(width: 200, height: 200)
            .background(.white)

            
            Text("Hello, world!")
                .padding()
                .background(.red)
                .padding()
                .background(.blue)
                .padding()
                .background(.green)
                .padding()
                .background(.yellow)

        }
    }
}

#Preview {
    ModifiersOrder()
}
