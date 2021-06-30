//
//  CurrentWeatherView.swift
//  SwiftUIWeatherDemo
//
//  Created by Julio Collado on 30/6/21.
//

import SwiftUI

struct CurrentWeatherView: View {
    var weatherImage: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .medium))
        }.padding(.bottom, 50)
    }
}
