//
//  CustomTabBar.swift
//  IRecycle
//
//  Created by Ricardo Chavarria on 12/18/16.
//  Copyright © 2016 Ricardo Chavarria. All rights reserved.
//

import UIKit

class CustomTabBar: UITabBar {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setValue(NSNumber(booleanLiteral: true), forKey: "_hidesShadow")
        
        layer.borderWidth = 0.0
        layer.borderColor = UIColor.clear.cgColor
    }
}
