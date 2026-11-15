//
//  WeeklyForecastView.swift
//  HourlyRowView
//
//  Created by Ninyee S on 10/13/26.
//

import Foundation
import SwiftUI

struct Day: Identifiable {
    let id = UUID()
    let weekDay: String
    let symbol: String
    let highTemp: Int
    let lowTemp: Int
}

extension Day {
    static let chapelWeather = [
        Day(weekDay: "Monday", symbol: "cloud.fill", highTemp: 82, lowTemp: 57),
        Day(weekDay: "Tuesday", symbol: "sun.max.fill", highTemp: 86, lowTemp: 56),
        Day(weekDay: "Wednesday", symbol: "sun.max.fill", highTemp: 89, lowTemp: 61),
        Day(weekDay: "Thursday", symbol: "sun.max.fill", highTemp: 88, lowTemp: 63),
        Day(weekDay: "Friday", symbol: "cloud.rain.fill", highTemp: 85, lowTemp: 62)
    ]
    
    static let charlotteWeather = [
        Day(weekDay: "Monday", symbol: "sun.max.fill", highTemp: 91, lowTemp: 59),
        Day(weekDay: "Tuesday", symbol: "sun.max.fill", highTemp: 88, lowTemp: 57),
        Day(weekDay: "Wednesday", symbol: "sun.max.fill", highTemp: 87, lowTemp: 62),
        Day(weekDay: "Thursday", symbol: "sun.max.fill", highTemp: 86, lowTemp: 63),
        Day(weekDay: "Friday", symbol: "sun.max.fill", highTemp: 84, lowTemp: 61)
    ]

    static let jerseyWeather = [
        Day(weekDay: "Monday", symbol: "sun.max.fill", highTemp: 70, lowTemp: 57),
        Day(weekDay: "Tuesday", symbol: "sun.max.fill", highTemp: 72, lowTemp: 58),
        Day(weekDay: "Wednesday", symbol: "cloud.sun.fill", highTemp: 80, lowTemp: 62),
        Day(weekDay: "Thursday", symbol: "cloud.fill", highTemp: 65, lowTemp: 54),
        Day(weekDay: "Friday", symbol: "cloud.rain.fill", highTemp: 77, lowTemp: 57)
    ]

}

struct WeeklyForecastView: View {
    //let currentHour = Hour(time: 15, symbol: "sun.max.fill", temp: 85) // change based off hour
    let day : Day
    
    var body: some View {
        HStack() {
            Text("\(day.weekDay)")
                //.padding(5)
                .frame(width: 75)
            Image(systemName: day.symbol)
                .padding(5)
            Text("\(day.lowTemp)°")
                .padding(20)
                //.foregroundStyle(Color("lightBlue"))
            //Image(systemName: "capsule")
            RoundedRectangle(cornerRadius: 40)
                .frame(width: 80, height: 6)
            Text("\(day.highTemp)°")
                //.padding(20)
                .frame(width: 30)
        }
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .padding(.horizontal)
        //.background(Color("greyBlue"))
    }
}

#Preview {
    WeeklyForecastView(day: Day.chapelWeather[0])
}
