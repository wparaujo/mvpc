//
//  ViewCode.swift
//  sample-mvcp
//
//  Created by Wesley Araujo on 04/11/19.
//  Copyright © 2019 Wesley Araujo. All rights reserved.
//

import Foundation

protocol ViewCode {
    
    func buildViewHierarchy()
    func setupConstraints()
    func setupAditionalConfigurations()
    func setupView()
    
}

extension ViewCode {
    
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAditionalConfigurations()
    }
    
}
