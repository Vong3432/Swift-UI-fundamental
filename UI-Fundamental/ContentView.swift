//
//  ContentView.swift
//  UI-Fundamental
//
//  Created by Vong Nyuksoon on 12/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            ListView()
                .tabItem {
                    Image(systemName: "books.vertical")
                    Text("Courses")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
