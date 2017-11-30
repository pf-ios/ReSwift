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
    var updatedAt: Date { get set }
    var isUpdated: Bool { get set }
    func setUpdated()
}

extension Markable {
    mutating func setUpdated(_ updated: Bool = true) {
        isUpdated = updated
        updatedAt = Date()
    }
}

extension Markable: Equatable {
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.updatedAt == rhs.updatedAt
    }
}
