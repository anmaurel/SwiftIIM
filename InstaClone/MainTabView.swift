//
//  MainTabView.swift
//  InstaClone
//
//  Created by jpo on 18/08/2021.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Screen 1")
                .tabItem { Label("Home", systemImage: "house") }
            Test4View()
                .tabItem { Label("Tasks", systemImage: "number") }
            ContentView()
                .tabItem { Label("Insta", systemImage: "number") }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
