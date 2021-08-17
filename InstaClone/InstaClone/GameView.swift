//
//  GameView.swift
//  InstaClone
//
//  Created by jpo on 17/08/2021.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var game = Game(local: "Marseille", visitor: "Paris")
    
    var body: some View {
        VStack {
            HStack {
                Text(game.local)
                + Text(" - ")
                + Text(game.visitor)
            }
            HStack {
                Text("\(game.localScore)")
                + Text(" - ")
                + Text("\(game.visitorScore)")
            }
            HStack {
                Button(action: {
                    game.localScore += 1
                }, label: {
                    Text("Score !")
                })
                Button(action: {
                    game.visitorScore += 1
                }, label: {
                    Text("Score !")
                })
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
