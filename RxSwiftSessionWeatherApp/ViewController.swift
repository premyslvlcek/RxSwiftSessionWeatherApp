//
//  ViewController.swift
//  RxSwiftSessionWeatherApp
//
//  Created by Premysl Vlcek on 28/05/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    @IBOutlet private weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class ViewModel {
    private let networkService: NetworkService

    init(networkService: NetworkService) {
        self.networkService = networkService
    }
}

