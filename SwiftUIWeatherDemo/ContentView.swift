//
//  ContentView.swift
//  SwiftUIWeatherDemo
//
//  Created by Julio Collado on 30/6/21.
//

import SwiftUI

struct Day: Identifiable {
    let id = UUID()
    var name: String
    var weatherImageName: String
    var temperature: Int
}

struct ContentView: View {
    let daysOfWeek: [Day] = [Day(name: "MON", weatherImageName: "cloud.sun.bolt.fill", temperature: 19),
                             Day(name: "TUE", weatherImageName: "wind.snow", temperature: 11),
                             Day(name: "WED", weatherImageName: "cloud.sun.rain.fill", temperature: 22),
                             Day(name: "THU", weatherImageName: "sun.max.fill", temperature: 16),
                             Day(name: "FRI", weatherImageName: "thermometer.sun.fill", temperature: 25)]
    
    let nightsOfWeek: [Day] = [Day(name: "MON", weatherImageName: "cloud.moon.bolt.fill", temperature: 10),
                             Day(name: "TUE", weatherImageName: "snow", temperature: -2),
                             Day(name: "WED", weatherImageName: "cloud.moon.fill", temperature: 21),
                             Day(name: "THU", weatherImageName: "moon.stars.fill", temperature: 20),
                             Day(name: "FRI", weatherImageName: "moon.circle.fill", temperature: 18)]
    
    @State private var isNight: Bool = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                CityTextView(cityName: "Montevideo, Uruguay")
                CurrentWeatherView(weatherImage: isNight ? "cloud.moon.rain.fill" : "cloud.sun.rain.fill", temperature: isNight ? 11 : 23)
                WeekWeatherView(days: isNight ? nightsOfWeek : daysOfWeek)
                Spacer()
                
                WeatherButton(isNight: $isNight)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
