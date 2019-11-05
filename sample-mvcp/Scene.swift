//
//  Scene.swift
//  sample-mvcp
//
//  Created by Wesley Araujo on 05/11/19.
//  Copyright © 2019 Wesley Araujo. All rights reserved.
//

import UIKit


protocol Scene: NSObject {
    
    func make(with coordinator: Coordinator) -> UIViewController
    
}
