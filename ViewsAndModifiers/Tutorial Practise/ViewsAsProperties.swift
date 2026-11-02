//
//  ViewsAsProperties.swift
//  ViewsAndModifiers
//
//  Created by Shubham Kashyap on 02/11/26.
//

import SwiftUI

struct ViewsAsProperties: View {
    // Properties
    let motto1 = Text("Work hard")
        .font(.largeTitle)
        .foregroundStyle(.red)
    
    let motto2 = Text("Work smart")
        .font(.subheadline)
        .foregroundStyle(.blue)

    let motto3 = VStack {
        Text("Communication is nice")
            .foregroundStyle(.green)
    }
    
    // You can declare views as computed properties
    var motto4: some View { // No default viewbuilder that creates behind the scene tupleviews
        VStack {
            Text("Be cool and hip !!")
                .font(.title2)
                .foregroundStyle(.teal)
                .bold()
            
            Text("Young and fresh !!")
                .font(.title3)
                .foregroundStyle(.indigo)
                .italic()
        }
    }
    
    var motto5: some View {
        Group { // Using Group, the arrangement of your views is determined by how you use them elsewhere in your code // Generally used for organisation of code chunks
            Text("Vampires are not good !!")
                .font(.title)
                .foregroundStyle(.mint)
                .bold()
            
            Text("Bigfoot are awesome !!")
                .font(.largeTitle)
                .foregroundStyle(.cyan)
                .bold()
            
            Text("Drink milk !!")
                .font(.body)
                .foregroundStyle(.yellow)
                .bold()
        }
    }
    
    
    @ViewBuilder var spells: some View { // using viewbuilder // behind the scene tuple view is being created
            Text("Lumos")
            Text("Obliviate")
    }

    
    // Body
    var body: some View {
        VStack {
            motto1
            motto2
            motto3
            motto4
            motto5
            spells
        }
    }
}

#Preview {
    ViewsAsProperties()
}
