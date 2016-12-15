//
//  Site.swift
//  IRecycle
//
//  Created by Ricardo Chavarria on 12/8/16.
//  Copyright © 2016 Ricardo Chavarria. All rights reserved.
//

import Foundation
import FirebaseDatabase

class Site {
    
    var id: String!
    var name: String!
    var email: String?
    var phone: String?
    var website: String?
    var location: String?
    var types: [Int]?
    
    public init(name: String) {
        self.name = name
    }
    
    public init(snapshot: FIRDataSnapshot) throws {
        id = snapshot.key
        name = try snapshot.value(forKey: "name")
    }
    
    public func save(ref: FIRDatabaseReference) {
        let val = ["name": name]
        let item = ref.childByAutoId()
        item.setValue(val)
    }
}
