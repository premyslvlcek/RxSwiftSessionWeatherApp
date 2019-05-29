//
//  NetworkService.swift
//  RxSwiftSessionWeatherApp
//
//  Created by Premysl Vlcek on 28/05/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import Moya
import RxSwift

enum Router: TargetType {
    private static let appID: String = "685601c443dfaba66b344738ffe6c0a2"

    case cityWeather(city: String)

    var baseURL: URL {
        return URL(string: "http://api.openweathermap.org/data/2.5")!
    }

    var path: String {
        return "weather"
    }

    var method: Moya.Method {
        switch self {
        case .cityWeather:
            return .get
        }
    }

    var sampleData: Data {
        return Data()
    }

    var task: Task {
        var parameters = [String: Any]()
        parameters["APPID"] = Router.appID
        parameters["units"] = "metric"

        switch self {
        case let .cityWeather(city):
            parameters["q"] = city
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        }
    }

    var headers: [String : String]? {
        return nil
    }
}

class NetworkService {
    private let provider = MoyaProvider<Router>()
}
