//
//  SceneFactory.swift
//  sample-mvcp
//
//  Created by Wesley Araujo on 05/11/19.
//  Copyright © 2019 Wesley Araujo. All rights reserved.
//

import Foundation

protocol SceneFactory {

    static func create() -> Scene
    
}
