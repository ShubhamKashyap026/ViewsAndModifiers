//
//  ConditionalModifiers.swift
//  ViewsAndModifiers
//
//  Created by Shubham Kashyap on 02/11/26.
//

import SwiftUI

struct ConditionalModifiers: View {
    // properties
    @State private var useRedText = false
    
    
    // body
    var body: some View {
        VStack {
            Button("Press me") {
                // when pressed
                useRedText.toggle()
            }
            .foregroundStyle(useRedText ? .red : .blue )
            .background(useRedText ? .white : .gray)
        }
    }
}

#Preview {
    ConditionalModifiers()
}

//
//struct Animal {
//    var legs: Int = 4
//    
//    var isInjured: Int {
//        self.legs = legs - 2
//    }
//}
