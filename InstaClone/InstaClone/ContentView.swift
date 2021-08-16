//
//  ContentView.swift
//  InstaClone
//
//  Created by jpo on 16/08/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HeaderView(posts: 75, followers: 7500, following: 60)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            ContentView()
        }
    }
}
