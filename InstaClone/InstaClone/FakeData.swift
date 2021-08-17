//
//  FakeData.swift
//  InstaClone
//
//  Created by jpo on 17/08/2021.
//

import Foundation

class FakeData: ObservableObject {
    @Published var posts: [Post]
    
    init() {
        self.posts = postsList
    }
}

let postsList = [
    Post(
        image: URL(string: "https://cdn.futura-sciences.com/buildsv6/images/wide1920/8/d/6/8d638f7cad_50170753_22048-yuekai-du-grand-banquet-copie.jpg"),
        description: "Excogitatum nequi oculis est quoniam colligati nequi eos quos capite corpus cautionibus vel purgaverint in ut missos ad ut validum corpus dominantur famulos est paucis alienis ad famulos torpescit ut satis percontatum quem eos quoniam visa torpescit capite satis est satis ad vel omnis capite medendi professio quoniam professio apud."
    ),
    Post(
        image: URL(string: "https://blog.photo24.fr/wp-content/uploads/2019/07/principale_Focus_Stacking_627x418.jpg"),
        description: "Excogitatum nequi oculis est quoniam colligati nequi eos quos capite corpus cautionibus vel purgaverint in ut missos ad ut validum corpus dominantur famulos est paucis alienis ad famulos torpescit ut satis percontatum quem eos quoniam visa torpescit capite satis est satis ad vel omnis capite medendi professio quoniam professio apud."
    ),
    Post(
        image: URL(string: "https://lemag.nikonclub.fr/wp-content/uploads/2016/11/Photo-selection-pour-Nikon-France-Mattia-Bonavida-2016-9.jpg"),
        description: "Excogitatum nequi oculis est quoniam colligati nequi eos quos capite corpus cautionibus vel purgaverint in ut missos ad ut validum corpus dominantur famulos est paucis alienis ad famulos torpescit ut satis percontatum quem eos quoniam visa torpescit capite satis est satis ad vel omnis capite medendi professio quoniam professio apud."
    )
]
