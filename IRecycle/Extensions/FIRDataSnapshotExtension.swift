//
//  FIRDataSnapshotExtension.swift
//  IRecycle
//
//  Created by Ricardo Chavarria on 12/8/16.
//  Copyright © 2016 Ricardo Chavarria. All rights reserved.
//

import Foundation
import FirebaseDatabase

extension FIRDataSnapshot {
    
    enum FIRDataSnapshotError: Error {
        case mappingFailed(message: String, info: Any?, innerError: Error?)
    }
    
    public func value<T>(forKey key: String) throws -> T? {
        guard let dictionary = value as? [String: AnyObject] else {
            throw FIRDataSnapshotError.mappingFailed(message: "Can't get snapshot value", info: self, innerError: nil)
        }
        
        guard let val = dictionary[key] else {
            throw FIRDataSnapshotError.mappingFailed(message: "Can't find key \(key)", info: value, innerError: nil)
        }
        
        guard let castValue = val as? T else {
            throw FIRDataSnapshotError.mappingFailed(message: "Can't cast value \(val) for key \(key)", info: value, innerError: nil)
        }
        
        return castValue
    }
}
