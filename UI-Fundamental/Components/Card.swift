//
//  CardView.swift
//  UI-Fundamental
//
//  Created by Vong Nyuksoon on 12/09/2021.
//

import SwiftUI

struct Card: View {
    var course: Course
    
    var body: some View {
        VStack(alignment:.leading, spacing: 16) {
            Image("mobile")
                .resizable()
                .scaledToFit()
                .frame(height: 120)
                .frame(maxWidth: .infinity)
            Text(course.title)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .lineLimit(2)
                .frame(maxHeight: .infinity)
            Text(course.text)
                .lineLimit(2)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                .frame(maxHeight: .infinity)
            Text(course.duration)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
        }
        .padding(25)
        .foregroundColor(.white)
        .background(LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.015186723456325303, saturation: 0.7904420416039157, brightness: 1.0, opacity: 1.0), location: 0.0), Gradient.Stop(color: Color(hue: 0.7478645048945783, saturation: 0.9373058640813254, brightness: 1.0, opacity: 1.0), location: 0.9999924879807692)]), startPoint: UnitPoint.topLeading, endPoint: UnitPoint.bottomTrailing))
        .cornerRadius(30)
        .frame(width: 252, height: 350)
        
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(course: courses[0])
    }
}
