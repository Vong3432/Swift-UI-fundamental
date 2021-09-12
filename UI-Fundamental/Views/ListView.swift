//
//  ListView.swift
//  UI-Fundamental
//
//  Created by Vong Nyuksoon on 12/09/2021.
//

import SwiftUI

struct ListView: View {
    @State var show = false
    var body: some View {
        NavigationView{
            List {
                ForEach(courses, id: \.id) { course in
                    ListItem(course: course)
                        .sheet(isPresented: $show, content: {
                            DetailView(course: course)
                        })
                        .onTapGesture {
                            show.toggle()
                        }
                }
            }
            .navigationTitle("Courses")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
