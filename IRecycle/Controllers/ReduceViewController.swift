//
//  ReduceViewController.swift
//  IRecycle
//
//  Created by Ricardo Chavarria on 12/26/16.
//  Copyright © 2016 Ricardo Chavarria. All rights reserved.
//

import UIKit

class ReduceViewController: UIViewController {

//    @IBOutlet weak var gradientView: GradientView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let gradientView = view as? GradientView {
            // Set the gradient colors
            gradientView.colors = [.init(red: 0.188, green: 0.702, blue: 1.0, alpha: 1.0), .init(red: 0.121, green: 0.816, blue: 1.0, alpha: 1.0)]
            
            // Optionally set some locations
            gradientView.locations = [0.0, 1.0]
            
            // Optionally change the direction. The default is vertical.
            gradientView.direction = .horizontal
        }
    }
}
