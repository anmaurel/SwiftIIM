//
//  RatingView.swift
//  MovieManage
//
//  Created by jpo on 18/08/2021.
//

import SwiftUI

struct RatingView: View {
    
    var rating: Float
    
    let colorOrange = Color(red: 243 / 255, green: 119 / 255, blue: 39 / 255)
//    let colorBlue = Color(red: 22 / 255, green: 32 / 255, blue: 53 / 255)
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.white.opacity(0.2), lineWidth: 4)
            Circle()
                .trim(from: 0, to: CGFloat(rating / 10))
                .stroke(style: StrokeStyle(
                            lineWidth: 4,
                            lineCap: .round,
                            lineJoin: .round))
                .foregroundColor(colorOrange)
                .rotationEffect(Angle(degrees: -90))
            Text(String(format: "%.1f", rating))
                .font(.system(size: 14))
                .fontWeight(.light)
                .foregroundColor(.white)
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RatingView(rating: 0)
            RatingView(rating: 3.5)
            RatingView(rating: 6.5)
            RatingView(rating: 10)
        }
        .padding(2)
        .background(Color(red: 22 / 255, green: 32 / 255, blue: 53 / 255))
        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .previewLayout(.sizeThatFits)
    }
}
