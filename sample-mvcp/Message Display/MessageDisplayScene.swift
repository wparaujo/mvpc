//
//  MessageDisplayScene.swift
//  sample-mvcp
//
//  Created by Wesley Araujo on 05/11/19.
//  Copyright © 2019 Wesley Araujo. All rights reserved.
//

import UIKit

class MessageDisplayScene: NSObject, Scene {

    func make(with coordinator: Coordinator) -> UIViewController {
        let messageViewController = MessageDisplayConfigurator.configure(viewController: MessageDisplayViewController(), coordinator: coordinator)
        return messageViewController
    }
    
}
