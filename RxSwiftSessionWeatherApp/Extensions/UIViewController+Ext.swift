//
//  UIViewController+Ext.swift
//  RxSwiftSessionWeatherApp
//
//  Created by Premysl Vlcek on 28/05/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

protocol StoryboardInstantiable: class {
    static func instantiate(fromStoryboard storyboard: UIStoryboard?, identifier: String?) -> Self
}

extension UIViewController: StoryboardInstantiable {
    class func instantiate(fromStoryboard storyboard: UIStoryboard?, identifier: String? = nil) -> Self {
        return instantiate(fromStoryboard: storyboard, identifier: identifier, type: self)
    }
}

private extension UIViewController {
    class func instantiate<T: UIViewController>(fromStoryboard storyboard: UIStoryboard?, identifier: String?, type: T.Type) -> T {
        guard let viewController = storyboard?.instantiateViewController(withIdentifier: identifier ?? String(describing: type)) as? T else {
            fatalError("Could not create UIViewController with identifier: " + (identifier ?? "UNKNOWN"))
        }

        return viewController
    }
}

