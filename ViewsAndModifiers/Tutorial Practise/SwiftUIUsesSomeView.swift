//
//  SwiftUIUsesSomeView.swift
//  ViewsAndModifiers
//
//  Created by Shubham Kashyap on 02/11/26.
//

import SwiftUI

struct SwiftUIUsesSomeView: View {
//    var body: Text {
//        get {
//            return Text("Hello, World!")
//        }
    //    }
    
//    var body: Text {
//        return Text("Hello, World!")
//    }
    
    var body: some View {
        VStack { // creates tuple view behind the scene
            Text("Hello, World!")
            
            Button("Hello World") {
                print(type(of: self.body))
            }
            .frame(width: 200, height: 200)
            .background(.red)
            .foregroundStyle(.white)
        }
    }
    
    
    
}

#Preview {
    SwiftUIUsesSomeView()
}
