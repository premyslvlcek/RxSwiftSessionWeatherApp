//
//  ViewModel.swift
//  RxSwiftSessionWeatherApp
//
//  Created by Premysl Vlcek on 29/05/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import RxSwift
import RxCocoa

class ViewModel {
    private let networkService: NetworkService

    init(networkService: NetworkService) {
        self.networkService = networkService
    }
}
