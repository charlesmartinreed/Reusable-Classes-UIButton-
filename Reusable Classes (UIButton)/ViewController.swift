//
//  ViewController.swift
//  Reusable Classes (UIButton)
//
//  Created by Charles Martin Reed on 2/6/19.
//  Copyright © 2019 Charles Martin Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var customButton = CustomButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonConstraints()
        addActionToButton()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //this could actually be refactored out of the view controller
    func setupButtonConstraints() {
        view.addSubview(customButton)
        customButton.translatesAutoresizingMaskIntoConstraints = false
        
        let buttonConstraints: [NSLayoutConstraint] = [
            customButton.heightAnchor.constraint(equalToConstant: 50),
            customButton.widthAnchor.constraint(equalToConstant: 200),
            customButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200)
        ]
        
        NSLayoutConstraint.activate(buttonConstraints)
    }
    
    func addActionToButton() {
        customButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped() {
        customButton.shakeButton()
    }


}

