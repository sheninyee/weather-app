//
//  HourlyRowView.swift
//  HourlyForecastView
//
//  Created by Ninyee S on 10/13/26.
//

import Foundation
import SwiftUI

struct HourlyRowView: View {
    let hours: [Hour]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(hours) { hour in
                    HourlyForecastView(hour: hour)
                }
            }
        }
        .padding()
        .background(Color("greyBlue"))
        //.background(in: )
    }
}

#Preview {
    HourlyRowView(hours : Hour.chapelWeather)
}
