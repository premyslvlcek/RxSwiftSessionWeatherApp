//
//  Weather.swift
//  RxSwiftSessionWeatherApp
//
//  Created by Premysl Vlcek on 28/05/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

struct Weather: Codable, Equatable {
    let id: Int?
    let main: String?
    let description: String?
    let icon: String?
}
