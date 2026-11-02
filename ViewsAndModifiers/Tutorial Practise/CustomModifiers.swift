//
//  CustomModifiers.swift
//  ViewsAndModifiers
//
//  Created by Shubham Kashyap on 02/11/26.
//

import SwiftUI

struct CustomModifiers: View {
    var body: some View {
        VStack {
            Color.blue
                .frame(width: 400, height: 400)
                .customKashyapWatermark("Shubham Kashyap")
            
            Text("Hello, World!")
                .modifier(Title()) // Using modifier without extension
            
            Text("Hello, World but again !")
                .customTitleStyle() // Using modifier with extension

//            Color.orange
//                .modifier(Title())
        }
    }
}


// Custom Modifiers
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

// Even better approach is using extension
extension View {
    func customTitleStyle() -> some View {
        modifier(Title())
    }
}



// Watermark custom modifier
struct KashyapWatermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func customKashyapWatermark(_ string: String) -> some View {
        modifier(KashyapWatermark(text: string))
    }
}

#Preview {
    CustomModifiers()
}
