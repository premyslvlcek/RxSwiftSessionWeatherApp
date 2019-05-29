//
//  ViewModelType.swift
//  RxSwiftSessionWeatherApp
//
//  Created by Premysl Vlcek on 29/05/2019.
//  Copyright © 2019 STRV. All rights reserved.

protocol ViewModelType {
    associatedtype Input
    associatedtype Output

    func transform(input: Input) -> Output
}
