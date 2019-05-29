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

class ViewController: UIViewController, BindableType {

    @IBOutlet private weak var button: UIButton!

    var viewModel: ViewModel!

    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func bindViewModel() {
        let input = ViewModel.Input(buttonTapped: button.rx.tap.asObservable())

        let output = viewModel.transform(input: input)

        output.currentWeather.subscribe().disposed(by: disposeBag)

        output.error.subscribe { error in
            print("an awesome error in controller: \(error)")
        }
        .disposed(by: disposeBag)
    }
}

