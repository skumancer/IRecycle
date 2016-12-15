//
//  CreateEditItemViewController.swift
//  IRecycle
//
//  Created by Ricardo Chavarria on 12/8/16.
//  Copyright © 2016 Ricardo Chavarria. All rights reserved.
//

import UIKit
import FirebaseDatabase

class CreateEditItemViewController: UIViewController {

    var item: RecycleItem?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var typeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = NSLocalizedString("New Item", comment: "String for new Recyclabe Item")
        
        if let item = item {
            title = NSLocalizedString("Edit", comment: "String for Edit") + item.name
        }
    }
    
    public func configure(item: RecycleItem) {
        self.item = item
    }

    // MARK: - Actions
    
    @IBAction func save(_ sender: Any) {
        guard let name = nameTextField.text else {
            return
        }
        
        guard let type = typeTextField.text else {
            return
        }
        
        let ref = FIRDatabase.database().reference(withPath: "items")
        let item = RecycleItem(name: name, type: type)
        item.save(ref: ref)
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
