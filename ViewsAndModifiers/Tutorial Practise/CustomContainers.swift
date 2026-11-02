//
//  CustomContainers.swift
//  ViewsAndModifiers
//
//  Created by Shubham Kashyap on 02/11/26.
//

import SwiftUI

struct CustomContainers: View {
    var body: some View {
        //        GridStack(rows: 5, columns: 5) { row, col in
        //            VStack {
        //                Text("R\(row) C\(col)")
        //
        //                Rectangle()
        //                    .frame(width: 50, height: 50)
        //                    .clipShape(RoundedRectangle(cornerRadius: 4.0))
        //            }
        
        
        
        //        GridStack(rows: 5, columns: 5) { row, col in
        //            HStack {
        //                Text("R\(row) C\(col)")
        //
        //                Rectangle()
        //                    .frame(width: 50, height: 50)
        //                    .clipShape(RoundedRectangle(cornerRadius: 4.0))
        //            }
        //        }
        
        
        
        // If using viewbuilder that provides default tupleview
        //        GridStack(rows: 4, columns: 4) { row, col in
        //            Image(systemName: "\(row * 4 + col).circle")
        //            Text("R\(row) C\(col)")
        //        }
        
        
        GridStack(rows: 5, columns: 5) { row, col in
            HStack {
                Image(systemName: "\(row * 4 + col).circle")
                Text("R\(row) C\(col)")
            }
        }
        
    }
}

// Custom grid stack
struct GridStack<Stuff: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Stuff
    
    //    @ViewBuilder let content: (Int, Int) -> Stuff // For not using stack and using default tuple view provided by viewbuilder
    
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { col in
                        content(row, col)
                    }
                }
            }
        }
    }
}

#Preview {
    CustomContainers()
}
