//
//  DarkSkyAPIClient.swift
//  WeatherApp
//
//  Created by Jeff Ripke on 7/27/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import Foundation

class DarkSkyAPIClien {
    
    fileprivate let apiKey = "a0a33a259c4028bb4952620e87d26637"
    
    lazy var baseURL: URL = {
        return URL(string: "https://api.darksky.net/forecast/\(self.apiKey)")!
    }()
    
    let downloader = JSONDownloader()
    
    typealias CurrentWeatherCompletionHandler = (CurrentWeather?, DarkSkyError?) -> Void
    
    func getCurrentWeather(at coordinate: Coordinate, completionHandler completion: @escaping CurrentWeatherCompletionHandler) {
        guard let url = URL(string: coordinate.description, relativeTo: baseURL) else {
            completion(nil, .invalidURL)
            return
        }
        let request = URLRequest(url: url)
        let task = downloader.jsonTask(with: request) { (json, error) in
            
        }
    }
}
