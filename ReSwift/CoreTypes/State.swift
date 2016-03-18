//
//  State.swift
//  ReSwift
//
//  Created by Benjamin Encz on 12/14/15.
//  Copyright © 2015 Benjamin Encz. All rights reserved.
//

import Foundation

public protocol StateType { }
public protocol Markable {
    func isMarkedUpdated() -> Bool
}

extension Markable {
    func isMarkedUpdated() -> Bool {
        return false
    }
}
