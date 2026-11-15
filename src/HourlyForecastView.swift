//
//  HourlyForecastView.swift
//  weather
//
//  Created by Ninyee S on 10/13/26.
//

//import Foundation
//current temperature, location, and weather condition

import SwiftUI

struct Hour: Identifiable {
    let id = UUID()
    let time: Int
    let symbol: String
    let temp: Int
}

extension Hour {
    static let chapelWeather = [
        Hour(time: 15, symbol: "sun.max.fill", temp: 85),
        Hour(time: 16, symbol: "sun.max.fill", temp: 84),
        Hour(time: 17, symbol: "cloud.sun.fill", temp: 83),
        Hour(time: 18, symbol: "cloud.fill", temp: 81),
        Hour(time: 19, symbol: "cloud.fill", temp: 81),
        Hour(time: 20, symbol: "cloud.fill", temp: 80),
        Hour(time: 21, symbol: "cloud.fill", temp: 76),
        Hour(time: 22, symbol: "cloud.fill", temp: 74),
        Hour(time: 23, symbol: "cloud.fill", temp: 73)
    ]
    
    static let charlotteWeather = [
        Hour(time: 15, symbol: "sun.max.fill", temp: 86),
        Hour(time: 16, symbol: "sun.max.fill", temp: 84),
        Hour(time: 17, symbol: "cloud.sun.fill", temp: 83),
        Hour(time: 18, symbol: "cloud.fill", temp: 81)
    ]

    static let jerseyWeather = [
        Hour(time: 15, symbol: "sun.max.fill", temp: 76),
        Hour(time: 16, symbol: "sun.max.fill", temp: 74),
        Hour(time: 17, symbol: "cloud.sun.fill", temp: 72),
        Hour(time: 18, symbol: "cloud.fill", temp: 71)
    ]

}

struct HourlyForecastView: View {
    //let currentHour = Hour(time: 15, symbol: "sun.max.fill", temp: 85) // change based off hour
    let hour : Hour
    
    var body: some View {
        VStack {
            Text("\(hour.time)")
            Image(systemName: hour.symbol)
            Text("\(hour.temp)°")
        }
        //.padding()
        //.background(Color("greyBlue"))
    }
}

#Preview {
    HourlyForecastView(hour: Hour.chapelWeather[0])
}
