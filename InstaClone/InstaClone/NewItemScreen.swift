//
//  NewItemScreen.swift
//  InstaClone
//
//  Created by jpo on 18/08/2021.
//

import SwiftUI

struct NewItemScreen: View {
    
    @State private var newTask = ""
    @Binding var taskList: [String]
    
    var body: some View {
        VStack {
            TextField("Add a task ...", text: $newTask)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Button(action: {
                taskList.append(newTask)
            }, label: {
                Text("Add")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            })
            .padding([.top], 15)
        }
    }
}

struct NewItemScreen_Previews: PreviewProvider {
    static var previews: some View {
        NewItemScreen(taskList: .constant([]))
    }
}
