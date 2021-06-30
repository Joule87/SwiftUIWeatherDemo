//
//  BackgroundView.swift
//  SwiftUIWeatherDemo
//
//  Created by Julio Collado on 30/6/21.
//

import SwiftUI

struct BackgroundView: View {
    var isNight: Bool
    private let dayColors: [Color] = [Color.blue, Color("Blue10N")]
    private let nightColors: [Color] = [Color.black, Color("Blue10N")]
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: isNight ? nightColors : dayColors), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
    }
}
