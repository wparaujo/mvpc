//
//  MessageDisplayConfigurator.swift
//  sample-mvcp
//
//  Created by Wesley Araujo on 05/11/19.
//  Copyright © 2019 Wesley Araujo. All rights reserved.
//

import UIKit

class MessageDisplayConfigurator {
    
    static func configure(viewController: MessageDisplayViewController, coordinator: Coordinator) -> UIViewController {
        let presenter = MessageDisplayPresenter(view: viewController, coordinator: coordinator)
        viewController.presenter = presenter
        return viewController
    }
    
}
