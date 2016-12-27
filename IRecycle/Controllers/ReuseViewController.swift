//
//  ReuseViewController.swift
//  IRecycle
//
//  Created by Ricardo Chavarria on 12/26/16.
//  Copyright © 2016 Ricardo Chavarria. All rights reserved.
//

import UIKit

class ReuseViewController: UIViewController {

    @IBOutlet weak var gradientView: GradientView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let gradientView = view as? GradientView {
            // Set the gradient colors
            gradientView.colors = [.init(red: 0.257, green: 0.577, blue: 0.132, alpha: 1.0), .init(red: 0.739, green: 0.936, blue: 0.406, alpha: 1.0)]
            
            // Optionally set some locations
            gradientView.locations = [0.0, 1.0]
            
            // Optionally change the direction. The default is vertical.
            gradientView.direction = .horizontal
        }
    }
}
