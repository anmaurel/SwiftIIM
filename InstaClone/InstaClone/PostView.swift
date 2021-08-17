//
//  PostView.swift
//  InstaClone
//
//  Created by jpo on 17/08/2021.
//

import SwiftUI
import Kingfisher

struct PostView: View {
    
    @StateObject var post: Post
    
    let imgProfile: URL?
    let name: String
    let location: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                KFImage(imgProfile)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 2)
                VStack(alignment: .leading, spacing: 2) {
                    Text(name)
                        .font(.system(size: 14))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text(location)
                        .font(.system(size: 14))
                        .fontWeight(.medium)
                }
                .padding([.leading], 10)
            }
            .padding([.leading, .trailing], 40)
            KFImage(post.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                Button(action: {
                    post.isLiked.toggle()
                }, label: {
                    Image(systemName: post.isLiked ? "heart.fill" : "heart")
                        .imageScale(.medium)
                        .foregroundColor(post.isLiked ? .red : .black)
                })
                Button(action: {
                    post.isReported.toggle()
                }, label: {
                    Image(systemName: post.isReported ? "flag.fill" : "flag")
                        .imageScale(.medium)
                        .foregroundColor(post.isReported ? .red : .black)
                })
            }
            .padding([.leading, .trailing], 40)
            VStack(alignment: .leading) {
                Text(post.description)
                    .font(.system(size: 14))
                    .fontWeight(.light)
                    .lineLimit(post.isExpanded ? nil : 3)
                Button(action: {
                    post.isExpanded.toggle()
                }, label: {
                    Text(post.isExpanded ? "see less" : "see more")
                        .font(.system(size: 14))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(2)
                })
            }
            .padding([.leading, .trailing], 40)
            
        }
        .padding(.horizontal, 0.0)
        .padding([.top, .bottom], 20)
    }
}

struct PostView_Previews: PreviewProvider {
    
    static var previews: some View {
        PostView(
            post: postsList[0],
            imgProfile: URL(string: "https://images.pexels.com/photos/5560908/pexels-photo-5560908.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
            name: "Quentin_IG",
            location: "Paris"
        )
//            .previewLayout(.sizeThatFits)
    }
}
