//
//  CityTextView.swift
//  SwiftUIWeatherDemo
//
//  Created by Julio Collado on 30/6/21.
//

import SwiftUI

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .foregroundColor(.white)
            .font(.system(size: 32, weight: .medium, design: .default))
            .padding()
    }
}
