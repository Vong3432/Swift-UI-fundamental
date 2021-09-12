//
//  CourseData.swift
//  UI-Fundamental
//
//  Created by Vong Nyuksoon on 12/09/2021.
//

import Foundation

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var image: String
    var detail: String
    var duration: String
}

let courses: [Course] = [
    Course(title: "Intro to cloud computing", text: "A complete quick course for you to pick up IOT cloud technology with easy.", image: "Group 40", detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla. Dictum non consectetur a erat nam at. Volutpat sed cras ornare arcu dui. Fames ac turpis egestas maecenas pharetra convallis. Fusce id velit ut tortor pretium viverra suspendisse. Tortor condimentum lacinia quis vel. Porttitor massa id neque aliquam vestibulum morbi blandit. Ut diam quam nulla porttitor. Netus et malesuada fames ac turpis egestas sed tempus urna.", duration: "5 sections - 3 hours"),
    Course(title: "What is IOT", text: "Learn about the basic foundation of what is IOT", image: "Group 45", detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla. Dictum non consectetur a erat nam at. Volutpat sed cras ornare arcu dui. Fames ac turpis egestas maecenas pharetra convallis. Fusce id velit ut tortor pretium viverra suspendisse. Tortor condimentum lacinia quis vel. Porttitor massa id neque aliquam vestibulum morbi blandit. Ut diam quam nulla porttitor. Netus et malesuada fames ac turpis egestas sed tempus urna.", duration: "5 sections - 3 hours"),
    Course(title: "Setup environment", text: "Start setup environment for you development tools.", image: "Group 47", detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla. Dictum non consectetur a erat nam at. Volutpat sed cras ornare arcu dui. Fames ac turpis egestas maecenas pharetra convallis. Fusce id velit ut tortor pretium viverra suspendisse. Tortor condimentum lacinia quis vel. Porttitor massa id neque aliquam vestibulum morbi blandit. Ut diam quam nulla porttitor. Netus et malesuada fames ac turpis egestas sed tempus urna.", duration: "5 sections - 3 hours"),
]
