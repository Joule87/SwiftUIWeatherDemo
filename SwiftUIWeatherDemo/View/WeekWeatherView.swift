//
//  WeekWeatherView.swift
//  SwiftUIWeatherDemo
//
//  Created by Julio Collado on 30/6/21.
//

import SwiftUI

struct WeekWeatherView: View {
    var days: [Day]
    
    var body: some View {
        HStack(spacing: 20) {
            ForEach(days, id: \.id) { day in
                DayOfWeekView(day: day.name, weatherImage: day.weatherImageName, temperature: day.temperature)
            }
        }
    }
}
