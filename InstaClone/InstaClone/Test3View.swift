//
//  Test3View.swift
//  InstaClone
//
//  Created by jpo on 17/08/2021.
//

import SwiftUI

struct Test3View: View {
    
    let carsList = [
        Car(model: "Renault", color: .black),
        Car(model: "VW", color: .red),
        Car(model: "Aston", color: .green)
    ]
    
    var body: some View {
        List {
            ForEach(carsList) { car in
                Text(car.model)
                    .foregroundColor(car.color)
            }
        }
    }
}

struct Test3View_Previews: PreviewProvider {
    static var previews: some View {
        Test3View()
    }
}

struct Car: Identifiable {
    let id = UUID()
    let model: String
    let color: Color
}
