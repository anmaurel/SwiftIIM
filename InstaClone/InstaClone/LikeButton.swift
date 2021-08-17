//
//  LikeButton.swift
//  InstaClone
//
//  Created by jpo on 17/08/2021.
//

import SwiftUI

struct LikeButton: View {
    
    @Binding var isLiked: Bool
    
    var body: some View {
        Button(action: {
            self.isLiked.toggle()
        }, label: {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .imageScale(.medium)
                .foregroundColor(isLiked ? .red : .black)
        })
    }
}

struct LikeButton_Previews: PreviewProvider {
    
    @State static var isLiked: Bool = false
    
    static var previews: some View {
        LikeButton(isLiked: $isLiked)
            .previewLayout(.sizeThatFits)
            .padding(10)
    }
}
