//
//  HeaderView.swift
//  InstaClone
//
//  Created by jpo on 16/08/2021.
//

import SwiftUI
import Kingfisher

struct HeaderView: View {
    
    let posts: Int
    let followers: Int
    let following: Int
    let title: String
    let job: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                KFImage(URL(string: "https://images.pexels.com/photos/5560908/pexels-photo-5560908.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 2)
                    .padding(5)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                    .padding([.leading], 2)
                Spacer()
                HStack(spacing: 20) {
                    VStack(alignment: .center, spacing: 2) {
                        Text(String(posts))
                            .font(.system(size: 14))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("Posts")
                            .font(.system(size: 12))
                            .fontWeight(.light)
                    }
                    VStack(alignment: .center, spacing: 2) {
                        Text("\(followers)")
                            .font(.system(size: 14))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("Followers")
                            .font(.system(size: 12))
                            .fontWeight(.light)
                    }
                    VStack(alignment: .center, spacing: 2) {
                        Text(String(following))
                            .font(.system(size: 14))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("Following")
                            .font(.system(size: 12))
                            .fontWeight(.light)
                    }
                }
            }
            VStack(alignment: .leading) {
                Text("\(title)")
                    .font(.system(size: 13))
                    .fontWeight(.bold)
                Text("\(job)")
                    .font(.system(size: 13))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                Text("\(description)")
                    .font(.system(size: 13))
                Text("Formateur et Youtubeur +80k 💻... ")
                    .font(.system(size: 13))
                    + Text("more")
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
                Text("www.notion.so/developpeurlibre/Tous-nos-contenu...")
                    .font(.system(size: 13))
                    .foregroundColor(Color.blue)
            }
            .padding([.top], 15)
        }
        .padding([.leading, .trailing], 40)
        .padding([.top, .bottom], 20)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(
            posts: 75,
            followers: 7500,
            following: 60,
            title: "Quentin",
            job: "Entrepreneur",
            description: "Apprends à coder et deviens libre 🌴 \nDéveloppeur iOS 👨‍💻"
        )
            .previewLayout(.sizeThatFits)
    }
}
