//
//  RecycleViewController.swift
//  IRecycle
//
//  Created by Ricardo Chavarria on 12/26/16.
//  Copyright © 2016 Ricardo Chavarria. All rights reserved.
//

import UIKit

class RecycleViewController: UIViewController {

    @IBOutlet weak var gradientView: GradientView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let gradientView = view as? GradientView {
            // Set the gradient colors
            gradientView.colors = [.gray, .lightGray]
            
            // Optionally set some locations
            gradientView.locations = [0.0, 1.0]
            
            // Optionally change the direction. The default is vertical.
            gradientView.direction = .horizontal
        }
    }
}
