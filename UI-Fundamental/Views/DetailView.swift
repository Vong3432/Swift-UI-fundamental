//
//  DetailView.swift
//  UI-Fundamental
//
//  Created by Vong Nyuksoon on 12/09/2021.
//

import SwiftUI

struct DetailView: View {
    var course: Course
    
    var body: some View {
        ScrollView {
            VStack(alignment:.leading, spacing: 16) {
                Image("mobile")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 120)
                    .frame(maxWidth: .infinity)
                Text(course.title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .lineLimit(2)
                Text(course.text)
                    .lineLimit(2)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                Text(course.duration)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            }
            .padding(25)
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.015186723456325303, saturation: 0.7904420416039157, brightness: 1.0, opacity: 1.0), location: 0.0), Gradient.Stop(color: Color(hue: 0.7478645048945783, saturation: 0.9373058640813254, brightness: 1.0, opacity: 1.0), location: 0.9999924879807692)]), startPoint: UnitPoint.topLeading, endPoint: UnitPoint.bottomTrailing))
            
            VStack(alignment: .leading, spacing: 20) {
                Text(course.text)
                    .font(.headline)
                Text("Course Detail")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                Text(course.detail)
            }
            .padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(course: courses[0])
    }
}
