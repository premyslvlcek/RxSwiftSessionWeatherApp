//
//  MainWeatherInfo.swift
//  RxSwiftSessionWeatherApp
//
//  Created by Premysl Vlcek on 29/05/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

struct MainWeatherInfo: Codable, Equatable {
    let temp: Float?
    let pressure: Float?
    let humidity: Float?
    let tempMin: Float?
    let tempMax: Float?
}
