//
//  ScenesFactory.swift
//  sample-mvcp
//
//  Created by Wesley Araujo on 05/11/19.
//  Copyright © 2019 Wesley Araujo. All rights reserved.
//

import Foundation

class MessageSceneFactory<T: Scene>: SceneFactory {
    
    static func create() -> Scene { return T() }
    
}
