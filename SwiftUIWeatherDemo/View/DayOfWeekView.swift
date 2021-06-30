//
//  DayOfWeekView.swift
//  SwiftUIWeatherDemo
//
//  Created by Julio Collado on 30/6/21.
//

import SwiftUI

struct DayOfWeekView: View {
    var day: String
    var weatherImage: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(day)
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .medium))
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .foregroundColor(.white)
                .font(.system(size: 30, weight: .medium))
        }
    }
}
