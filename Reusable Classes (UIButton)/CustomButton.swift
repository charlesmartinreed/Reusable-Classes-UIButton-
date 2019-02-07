//
//  CustomButton.swift
//  Reusable Classes (UIButton)
//
//  Created by Charles Martin Reed on 2/6/19.
//  Copyright © 2019 Charles Martin Reed. All rights reserved.
//

import UIKit

class CustomButton : UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        //used for Storyboard purposes
        super.init(coder: aDecoder)
        setupButton()
    }
    
    func setupButton() {
        setShadow()
        
        //MARK: Basic button styling
        setTitleColor(.white, for: .normal)
        
        backgroundColor = UIColor.blue
        titleLabel?.font = UIFont(name: "AvenirNext-DemiBold", size: 18)
        layer.cornerRadius = 25
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.darkGray.cgColor
    }
    
    //MARK: Setup shadow
    private func setShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius = 8
        layer.shadowOpacity = 0.5
        clipsToBounds = true
        layer.masksToBounds = false
    }
    
    //MARK: Shake animation
    func shakeButton() {
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        //self isn't necessary here, just used here for illustrative purposes
        let fromPoint = CGPoint(x: self.center.x - 8, y: self.center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: self.center.x + 8, y: self.center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        layer.add(shake, forKey: "position")
    }
    
}
