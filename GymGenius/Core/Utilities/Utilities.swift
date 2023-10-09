//
//  Utilities.swift
//  GymGenius
//
//  Created by Ishaan Bhasin on 10/9/23.
//

import Foundation

class Utilities {
    static func doubleToStringFormatter(value: Double) -> String {
        return String(format: "%.1f", value)
    }
    
    static func doubleToStringFormatterNoDecimal(value: Double) -> String {
        return String(format: "%.0f", value)
    }
}
