//
//  TestView.swift
//  InstaClone
//
//  Created by jpo on 17/08/2021.
//

import SwiftUI

struct TestView: View {
    
    @State private var isActive = false
    
    var body: some View {
        VStack {
            Text(isActive ? "Button on" : "Button off")
                .foregroundColor(isActive ? .green : .red)
                .fontWeight(.ultraLight)
            Button(action: {
                isActive.toggle()
            }, label: {
                Text("Update text")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(8)
            })
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
