//
//  AppDelegate.swift
//  RxSwiftSessionWeatherApp
//
//  Created by Premysl Vlcek on 28/05/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let window = UIWindow(frame: UIScreen.main.bounds)
        window.makeKeyAndVisible()
        self.window = window

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let networkService = NetworkService()
        let viewModel = ViewModel(networkService: networkService)
        let viewController = ViewController.instantiate(fromStoryboard: storyboard)
        viewController.bindViewModel(viewModel)
        window.rootViewController = viewController

        return true
    }
}

