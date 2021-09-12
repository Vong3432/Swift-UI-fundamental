//
//  HomeView.swift
//  UI-Fundamental
//
//  Created by Vong Nyuksoon on 12/09/2021.
//

import SwiftUI

struct HomeView: View {
    private var twoColumnGrid = [GridItem(.adaptive(minimum: 160))]
    
    let columns = [
        GridItem(.flexible(), spacing: 25),
        GridItem(.flexible(), spacing: 25),
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 16) {
                        ForEach(courses, id: \.id) { course in
                            NavigationLink(destination: DetailView(course: course)) {
                                Card(course: course)
                            }
                        }
                    }.padding()
                }
                
                Text("New lessons")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top)
                    .padding(.horizontal)
                    .padding(.bottom, -10)
                
                LazyVGrid(columns: columns,
                          spacing: 0, content: {
                            ForEach(courses, id: \.id) { course in
                                NavigationLink(destination: DetailView(course: course)) {
                                    CardHighlight(course: course)
                                    
                                }
                            }
                          })
                    .padding()
            }
            .navigationTitle("Start learning")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
