//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Jeff Ripke on 7/26/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import Foundation

struct CurrentWeather {
    let temperature: Double
    let humidity: Double
    let precipitationProbability: Double
    let summary: String
    let icon: String
}

extension CurrentWeather {
    
    struct Key {
        static let temperature = "temperature"
        static let humidity = "humidity"
        static let precipitationProbability = "PrecipProbability"
        static let summary = "summary"
        static let icon = "icon"
    }
    
    init?(json: [String: AnyObject]) {
       guard let temperatureValue = json[Key.temperature] as? Double,
        let humidityValue = json[Key.humidity] as? Double,
        let precipitationProbabilityValue = json[Key.precipitationProbability] as? Double,
        let summaryString = json[Key.summary] as? String,
        let iconString = json[Key.icon] as? String else {
            return nil
        }
        self.temperature = temperatureValue
        self.humidity = humidityValue
        self.precipitationProbability = precipitationProbabilityValue
        self.summary = summaryString
        self.icon = iconString
    }
}
