//
//  CardHighlight.swift
//  UI-Fundamental
//
//  Created by Vong Nyuksoon on 12/09/2021.
//

import SwiftUI

struct CardHighlight: View {
    var course: Course
    
    var body: some View {
        VStack(alignment:.leading, spacing: 16) {
            Image("mobile")
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .frame(maxWidth: .infinity)
            Text(course.title)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Text(course.duration)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
        }
        .padding(25)
        .foregroundColor(.white)
        .background(LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: Color(hue: 0.6446900884789157, saturation: 0.7904420416039157, brightness: 1.0, opacity: 1.0), location: 0.0), Gradient.Stop(color: Color(hue: 0.5560140954442772, saturation: 0.9373058640813254, brightness: 1.0, opacity: 1.0), location: 0.9999924879807692)]), startPoint: UnitPoint.topLeading, endPoint: UnitPoint.bottomTrailing))
        .cornerRadius(30)
        .frame(height: 250)
    }
}

struct CardHighlight_Previews: PreviewProvider {
    static var previews: some View {
        CardHighlight(course: courses[0])
    }
}
