//
//  ListItem.swift
//  UI-Fundamental
//
//  Created by Vong Nyuksoon on 12/09/2021.
//

import SwiftUI

struct ListItem: View {
    var course: Course
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "book")
                .frame(width: 47, height: 36)
                .background(Color.primaryColor)
                .foregroundColor(.white)
                .mask(Circle())
                
            VStack(alignment: .leading, spacing: 10) {
                Text(course.title)
                    .font(.title3)
                    .fontWeight(.medium)
                Text(course.text)
                    .opacity(0.6)
            }
        }
        .padding(.vertical)
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem(course: courses[0])
    }
}
