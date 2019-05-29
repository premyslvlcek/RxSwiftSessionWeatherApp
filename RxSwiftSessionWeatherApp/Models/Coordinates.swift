//
//  Coordinates.swift
//  RxSwiftSessionWeatherApp
//
//  Created by Premysl Vlcek on 29/05/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

struct Coordinates: Codable, Equatable {
    enum CodingKeys: String, CodingKey {
        case longitude = "lon"
        case latitude = "lat"
    }

    let longitude: Float?
    let latitude: Float?
}
