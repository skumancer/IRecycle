//
//  RecycleItem.swift
//  IRecycle
//
//  Created by Ricardo Chavarria on 12/8/16.
//  Copyright © 2016 Ricardo Chavarria. All rights reserved.
//

import Foundation
import FirebaseDatabase

class RecycleItem {
    
    var id: String?
    var name: String!
    var type: String!
    
    public init(name: String, type: String) {
        self.name = name
        self.type = type
    }
    
    public init(snapshot: FIRDataSnapshot) throws {
        id = snapshot.key
        name = try snapshot.value(forKey: "name")
        type = try snapshot.value(forKey: "type")
    }
    
    public func save(ref: FIRDatabaseReference) {
        let val = ["name": name, "type": type]
        let item = ref.childByAutoId()
        item.setValue(val)
    }
}
