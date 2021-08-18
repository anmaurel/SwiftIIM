//
//  MovieView.swift
//  MovieManage
//
//  Created by jpo on 18/08/2021.
//

import SwiftUI
import Kingfisher

struct MovieView: View {
    
    let movie: Movie
    
    var body: some View {
        HStack {
            KFImage(movie.posterUrl)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 150)
                .clipped()
                .cornerRadius(8.0)
            VStack {
                HStack {
                    Text(movie.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                    Spacer()
                    RatingView(rating: 8.4)
                        .frame(width: 50, height: 50)
                }
                Text(movie.description)
                    .fontWeight(.light)
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                    .lineLimit(4)
            }
            .padding([.top, .bottom], 10)
            .padding([.leading, .trailing], 8)
//            .frame(width: 45, height: 45)
        }
        .padding(10)
    }
}

struct MovieView_Previews: PreviewProvider {
    
    static let previewMovie = Movie(
        posterUrl: URL(string: "https://images.pexels.com/photos/5560908/pexels-photo-5560908.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
        title: "Fight Club",
        description: "Excogitatum nequi oculis est quoniam colligati nequi eos quos capite corpus cautionibus vel purgaverint in ut missos ad ut validum corpus dominantur famulos est paucis alienis ad famulos torpescit ut satis percontatum quem eos quoniam visa torpescit capite satis est satis ad vel omnis capite medendi professio quoniam professio apud.",
        ratin: 8.9)
    
    static var previews: some View {
        MovieView(movie: previewMovie)
        .background(Color(red: 22 / 255, green: 32 / 255, blue: 53 / 255))
        .previewLayout(.sizeThatFits)
    }
}
