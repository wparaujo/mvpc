//
//  DisplayMessageCoordinator.swift
//  sample-mvcp
//
//  Created by Wesley Araujo on 05/11/19.
//  Copyright © 2019 Wesley Araujo. All rights reserved.
//

import UIKit

class MessageDisplayCoordinator: Coordinator {
    
    let navigationController = UINavigationController()
    
    func start() {
        let scene = MessageSceneFactory<MessageDisplayScene>.create().make(with: self)
        self.navigationController.pushViewController(scene, animated: true)
    }
    
    func getRootViewController() -> UIViewController { return self.navigationController }
    
}


