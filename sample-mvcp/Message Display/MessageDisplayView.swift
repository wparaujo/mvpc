//
//  MessageDisplayView.swift
//  sample-mvcp
//
//  Created by Wesley Araujo on 04/11/19.
//  Copyright © 2019 Wesley Araujo. All rights reserved.
//

import UIKit
import SnapKit

protocol MessageDisplayViewDelegate {
    func messageDisplayView(sendsEventsFrom sender: Any, with event: UIEvent)
}

class MessageDisplayView: UIView {
    
    var delegate: MessageDisplayViewDelegate?
    
    var formStackView: UIStackView?
    
    var messageDisplayLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .white
        return view
    }()
    
    var messageDisplayButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .blue
        view.setTitle("Acessar", for: .normal)
        view.addTarget(self, action: #selector(messageDisplayView(sendsEventsFrom:with:)), for: .touchUpInside)
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func messageDisplayView(sendsEventsFrom sender: Any, with event: UIEvent) {
        delegate?.messageDisplayView(sendsEventsFrom: sender, with: event)
    }
    
}

extension MessageDisplayView: ViewCode {
    
    func buildViewHierarchy() {
        let formArrangedSubviews = [messageDisplayLabel, messageDisplayButton]
        self.formStackView = UIStackView(arrangedSubviews: formArrangedSubviews)
        guard let formStackView = self.formStackView else { return }
        addSubview(formStackView)
    }
    
    func setupConstraints() {
        self.formStackView?.snp.makeConstraints({ (make) in
            make.center.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.15)
            make.width.equalToSuperview().multipliedBy(0.85)
        })
                    
    }
    
    func setupAditionalConfigurations() {
        backgroundColor = .gray
        self.formStackView?.axis = .vertical
        self.formStackView?.distribution = .fillEqually
        self.formStackView?.alignment = .fill
        self.formStackView?.spacing = CGFloat(8)
    }
    
}
