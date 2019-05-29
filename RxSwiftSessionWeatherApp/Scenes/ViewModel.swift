//
//  ViewModel.swift
//  RxSwiftSessionWeatherApp
//
//  Created by Premysl Vlcek on 29/05/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import RxSwift
import RxCocoa
import RxOptional

class ViewModel: ViewModelType {
    struct Input {
        let buttonTapped: Observable<Void>
    }

    struct Output {
        let currentWeather: Observable<WeatherResponse>
        let error: Observable<Error>
    }

    private let networkService: NetworkService

    init(networkService: NetworkService) {
        self.networkService = networkService
    }

    func transform(input: Input) -> Output {
        let weatherResponse = input.buttonTapped.flatMap { [unowned self] () in
            return self.networkService.getCurrentWeather(inCityNamed: "Prague").asObservable().materialize().debug("currentWeather")
        }
        .share(replay: 1, scope: .whileConnected)

        let weather = weatherResponse.map({ $0.element }).filterNil()
        let error = weatherResponse.map({ $0.error }).filterNil()

        return Output(currentWeather: weather, error: error)
    }
}
