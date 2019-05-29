//
//  Weather.swift
//  RxSwiftSessionWeatherApp
//
//  Created by Premysl Vlcek on 28/05/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

struct WeatherResponse: Codable, Equatable {
    enum CodingKeys: String, CodingKey {
        case coordinates = "coord"
        case name
        case weather
        case main
        case wind
    }

    let coordinates: Coordinates?
    let name: String?
    let weather: [Weather]?
    let main: MainWeatherInfo?
    let wind: Wind?
}
