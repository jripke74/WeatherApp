//
//  CurrentWeatherViewModel.swift
//  WeatherApp
//
//  Created by Jeff Ripke on 7/26/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeatherViewModel {
    let temperature: String
    let humidity: String
    let precipitationProbability: String
    let summary: String
    let icon: UIImage
    
    init(model: CurrentWeather) {
        let roundedTemperature = Int(model.temperature)
        self.temperature = "\(roundedTemperature)°"
        let humidityPercentValue = Int(model.humidity * 100)
        self.humidity = "\(humidityPercentValue)%"
        let precipPercentValue = Int(model.precipitationProbability * 100)
        self.precipitationProbability = "\(precipPercentValue)%"
        self.summary = model.summary
        let weatherIcon = WeatherIcon(iconString: model.icon)
        self.icon = weatherIcon.image
    }
}
