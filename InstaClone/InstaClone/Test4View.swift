//
//  Test4View.swift
//  InstaClone
//
//  Created by jpo on 17/08/2021.
//

import SwiftUI

struct Test4View: View {
    
    var items = ["Ending project", "Sending folder"]
    
    @State private var newTaskScreenIsPresented = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            List(items, id: \.self) { item in
                Text(item)
            }
            Button(action: {
                newTaskScreenIsPresented = true
            }, label: {
                ZStack {
                    Circle()
                        .frame(width: 30)
                        .shadow(radius: 2)
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .bold))
                }
            })
            .padding(14)
            .sheet(isPresented: $newTaskScreenIsPresented, content: {
                Text("oke")
            })
        }
    }
}

struct Test4View_Previews: PreviewProvider {
    static var previews: some View {
        Test4View()
    }
}
