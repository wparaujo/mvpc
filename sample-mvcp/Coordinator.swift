//
//  Coordinator.swift
//  sample-mvcp
//
//  Created by Wesley Araujo on 04/11/19.
//  Copyright © 2019 Wesley Araujo. All rights reserved.
//

import UIKit

protocol Coordinator {
    
    func start()
    func getRootViewController() -> UIViewController
    
}

extension Coordinator {
    
    func getRootViewController() -> UIViewController { return UIViewController() }
    
}
