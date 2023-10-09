//
//  User.swift
//  GymGenius
//
//  Created by Ishaan Bhasin on 10/8/23.
//

import Foundation

struct User {
    enum Gender: String {
        case male = "Male"
        case female = "Female"
    }

    var weight: Double
    var height: Double
    var age: Int
    var gender: Gender

    // TODO: Unit conversion
    var BasalMetabolicRate: Double {
        let weightValue = weight * 10
        let heightValue = 6.5 * height
        let ageValue = Double(5 * age)
        let genderAdjustment = Double(gender == .male ? 5 : -161)
        return weightValue + heightValue - ageValue + genderAdjustment
    }
}
