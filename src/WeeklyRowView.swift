//
//  WeeklyRowView.swift
//  WeeklyForecastView
//
//  Created by Ninyee S on 10/13/26.
//

import Foundation
import SwiftUI

struct WeeklyRowView: View {
    let days: [Day]
    var body: some View {
        VStack() {
            ForEach(days) { day in
                WeeklyForecastView(day: day)
            }
        }
        .padding()
        .background(Color("greyBlue"))
        //.background(in: )
    }
}

#Preview {
    WeeklyRowView(days : Day.chapelWeather)
}
