//
//  MessageDisplayViewController.swift
//  sample-mvcp
//
//  Created by Wesley Araujo on 04/11/19.
//  Copyright © 2019 Wesley Araujo. All rights reserved.
//

import UIKit

class MessageDisplayViewController: UIViewController {
    
    var presenter: MessageDisplayPresenter?
    var messageDisplayView = MessageDisplayView()

    override func loadView() {
        self.view = messageDisplayView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageDisplayView.delegate = self
    }

}

extension MessageDisplayViewController: MessageDisplayViewDelegate {
    
    func messageDisplayView(sendsEventsFrom sender: Any, with event: UIEvent) {
        self.presenter?.respondsMessageDisplayButtonAction()
    }
    
}
