//
//  ContentView.swift
//  MovieManage
//
//  Created by jpo on 18/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            NavigationView {
                Text("Welcome !")
                    .font(.system(size: 50))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .navigationBarTitle(Text("Home"))
                .navigationBarItems(leading:
                    HStack {
                        NavigationLink(
                            destination: MoviesView()
                                .background(Color(red: 22 / 255, green: 32 / 255, blue: 53 / 255).ignoresSafeArea())
                                .navigationBarTitle(Text("Movies")),
                            label: {
                                Label {
                                    Text("Movies")
                                        .padding([.leading], -2)
                                } icon: {
                                    Image(systemName: "film")
                                }
                                .padding(12)
                                .background(Color(UIColor.systemIndigo))
                                .foregroundColor(.white)
                                .cornerRadius(8)
                            })
                    }, trailing:
                    HStack {
                        NavigationLink(
                            destination: Text("Destination"),
                            label: {
                                Text("Link 2")
                            })
                        
                        NavigationLink(
                            destination: Text("Destination"),
                            label: {
                                Text("Link 3")
                            })
                    }
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(Color(red: 22 / 255, green: 32 / 255, blue: 53 / 255).ignoresSafeArea())
    }
}
