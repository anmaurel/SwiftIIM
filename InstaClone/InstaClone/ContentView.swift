//
//  ContentView.swift
//  InstaClone
//
//  Created by jpo on 16/08/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            HStack(spacing: 50) {
                Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                VStack(alignment: HorizontalAlignment.center,spacing: 50) {
                    Text("Placeholder trt et e tet")
                        .padding()
                    Text("Hello, world!")
                        .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
