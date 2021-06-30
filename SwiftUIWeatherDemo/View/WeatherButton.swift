//
//  WeatherButton.swift
//  SwiftUIWeatherDemo
//
//  Created by Julio Collado on 30/6/21.
//

import SwiftUI

struct WeatherButton: View {
    @Binding var isNight: Bool
    
    var body: some View {
        Button(action: {
            isNight.toggle()
        }, label: {
            WeatherButtonTitle(isNight: isNight)
        })
    }
}

struct WeatherButtonTitle: View {
    var isNight: Bool
    
    var body: some View {
        Text(isNight ? "Switch to day" : "Switch to night").frame(width: 280, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color.white)
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .cornerRadius(10)
    }
}
