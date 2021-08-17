//
//  ContentView.swift
//  InstaClone
//
//  Created by jpo on 16/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isExpanded: Bool = false
    @State private var isLiked: Bool = false
    @State private var isReported: Bool = false
    
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
                PostView(
                    imgProfile: URL(string: "https://images.pexels.com/photos/5560908/pexels-photo-5560908.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                    name: "Quentin_IG",
                    location: "Paris",
                    imgPost: URL(string: "https://cdn.futura-sciences.com/buildsv6/images/wide1920/8/d/6/8d638f7cad_50170753_22048-yuekai-du-grand-banquet-copie.jpg"),
                    description: "Excogitatum nequi oculis est quoniam colligati nequi eos quos capite corpus cautionibus vel purgaverint in ut missos ad ut validum corpus dominantur famulos est paucis alienis ad famulos torpescit ut satis percontatum quem eos quoniam visa torpescit capite satis est satis ad vel omnis capite medendi professio quoniam professio apud.",
                    isExpanded: $isExpanded,
                    isLiked: $isLiked,
                    isReported: $isReported)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
