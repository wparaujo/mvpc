//
//  ApplicationCoordinator.swift
//  sample-mvcp
//
//  Created by Wesley Araujo on 04/11/19.
//  Copyright © 2019 Wesley Araujo. All rights reserved.
//

import UIKit

class ApplicationCoordinator: Coordinator {
    
    var rootViewController: UINavigationController?
    var window: UIWindow
    var starterCoordinator: Coordinator?
    
    init(window: UIWindow, rootViewController: UINavigationController = UINavigationController()) {
        self.window = window
        setupWindow()
    }
    
    func setupWindow() {
//        self.window.rootViewController = self.rootViewController
        self.window.makeKeyAndVisible()
    }
    
    func setupStarterCoordinator(_ coordinator: Coordinator) {
        self.starterCoordinator = coordinator
    }
    
    func start() {
        self.window.rootViewController = self.starterCoordinator?.getRootViewController()
        self.starterCoordinator?.start()
    }
    
}
