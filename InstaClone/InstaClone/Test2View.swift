//
//  Test2View.swift
//  InstaClone
//
//  Created by jpo on 17/08/2021.
//

import SwiftUI

struct Test2View: View {
    
    @State var userName = ""
    @State var switchStatus = false
    @State var todayDate: Date = Date()
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 40) {
            Text("Hello \(userName) !")
            TextField("Enter user name", text: $userName)
                .frame(width: 200)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Toggle(isOn: $switchStatus, label: {
                Text("Wifi")
            })
            .frame(width: 120)
            DatePicker(selection: $todayDate) {
                Text("Date")
            }
            .frame(width: 300)
        }
    }
}

struct Test2View_Previews: PreviewProvider {
    static var previews: some View {
        Test2View()
            .previewLayout(.sizeThatFits)
            .padding(25)
    }
}
