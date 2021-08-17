//
//  PostView.swift
//  InstaClone
//
//  Created by jpo on 17/08/2021.
//

import SwiftUI
import Kingfisher

struct PostView: View {
    
    let imgProfile: URL?
    let name: String
    let location: String
    let imgPost: URL?
    let description: String
    
    @Binding var isExpanded: Bool
    @Binding var isLiked: Bool
    @Binding var isReported: Bool
    
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
            .padding([.leading], 10)
            KFImage(imgPost)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                Button(action: {
                    self.isLiked.toggle()
                }, label: {
                    Image(systemName: isLiked ? "heart.fill" : "heart")
                        .imageScale(.medium)
                        .foregroundColor(isLiked ? .red : .black)
                })
                Button(action: {
                    self.isReported.toggle()
                }, label: {
                    Image(systemName: isReported ? "flag.fill" : "flag")
                        .imageScale(.medium)
                        .foregroundColor(isReported ? .red : .black)
                })
            }
            .padding([.leading], 10)
            VStack(alignment: .leading) {
                Text(description)
                    .font(.system(size: 14))
                    .fontWeight(.light)
                    .lineLimit(isExpanded ? nil : 3)
                Button(action: {
                    isExpanded.toggle()
                }, label: {
                    Text(isExpanded ? "see less" : "see more")
                        .font(.system(size: 14))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(2)
                })
            }
            .padding([.leading], 10)
            
        }
        .padding(.horizontal, 0.0)
        .padding([.top, .bottom], 20)
    }
}

struct PostView_Previews: PreviewProvider {
    
    @State static var isExpanded: Bool = false
    @State static var isLiked: Bool = false
    @State static var isReported: Bool = false
    
    static var previews: some View {
        PostView(
            imgProfile: URL(string: "https://images.pexels.com/photos/5560908/pexels-photo-5560908.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
            name: "Quentin_IG",
            location: "Paris",
            imgPost: URL(string: "https://cdn.futura-sciences.com/buildsv6/images/wide1920/8/d/6/8d638f7cad_50170753_22048-yuekai-du-grand-banquet-copie.jpg"),
            description: "Excogitatum nequi oculis est quoniam colligati nequi eos quos capite corpus cautionibus vel purgaverint in ut missos ad ut validum corpus dominantur famulos est paucis alienis ad famulos torpescit ut satis percontatum quem eos quoniam visa torpescit capite satis est satis ad vel omnis capite medendi professio quoniam professio apud.",
            isExpanded: $isExpanded,
            isLiked: $isLiked,
            isReported: $isReported
        )
//            .previewLayout(.sizeThatFits)
    }
}
