//
//  DisplayMessengerPresenter.swift
//  sample-mvcp
//
//  Created by Wesley Araujo on 04/11/19.
//  Copyright © 2019 Wesley Araujo. All rights reserved.
//

import Foundation

class MessageDisplayPresenter {
    
    var view: MessageDisplayViewController
    var coordinator: Coordinator
    
    init(view: MessageDisplayViewController, coordinator: Coordinator) {
        self.view = view
        self.coordinator = coordinator
    }
    
    func respondsMessageDisplayButtonAction() {
        self.view.messageDisplayView.messageDisplayLabel.text = "Acessou!"
    }
    
}
