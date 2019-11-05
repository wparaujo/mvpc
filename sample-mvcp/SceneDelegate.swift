//
//  SceneDelegate.swift
//  sample-mvcp
//
//  Created by Wesley Araujo on 04/11/19.
//  Copyright © 2019 Wesley Araujo. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let applicationCoordinator = ApplicationCoordinator(window: window)
        let displayMessageCoordinator = MessageDisplayCoordinator()
        self.window = window
        applicationCoordinator.setupStarterCoordinator(displayMessageCoordinator)
        applicationCoordinator.start()
    }
    
}
