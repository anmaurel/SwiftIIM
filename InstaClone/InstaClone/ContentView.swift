//
//  ContentView.swift
//  InstaClone
//
//  Created by jpo on 16/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var fakeData = FakeData()

    var body: some View {
        VStack {
            HeaderView(
                posts: 75,
                followers: 7500,
                following: 60,
                title: "Quentin",
                job: "Entrepreneur",
                description: "Apprends à coder et deviens libre 🌴 \nDéveloppeur iOS 👨‍💻"
            )
            ScrollView {
                ForEach(fakeData.posts) { post in
                    PostView(
                        post: post,
                        imgProfile: URL(string: "https://images.pexels.com/photos/5560908/pexels-photo-5560908.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                        name: "Quentin_IG",
                        location: "Paris"
                    )
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
