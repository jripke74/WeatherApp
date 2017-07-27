//
//  DarkSkyError.swift
//  WeatherApp
//
//  Created by Jeff Ripke on 7/26/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import Foundation

enum DarkSkyError: Error {
    case requestFailed
    case responseUnsuccessful
    case invalidData
    case jsonConversionFailure
    case invalidURL
}
