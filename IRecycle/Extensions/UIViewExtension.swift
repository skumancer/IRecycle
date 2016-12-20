//
//  UIViewExtension.swift
//  IRecycle
//
//  Created by Ricardo Chavarria on 12/17/16.
//  Copyright © 2016 Ricardo Chavarria. All rights reserved.
//

import UIKit

extension UIView {
    
    public func addGradientBackground(with colors: [UIColor]) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = colors.map { $0.cgColor }
        layer.insertSublayer(gradient, at: 1)
    }
}
