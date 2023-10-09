//
//  MeasurementViewModel.swift
//  GymGenius
//
//  Created by Ishaan Bhasin on 10/8/23.
//

import Foundation
import SwiftUI

class MeasurementViewModel: ObservableObject{
    @Published var user = MOCK_USERDATA
    
    func setWeightInKg(weight: Double) {
        user.weight = weight
    }
    
    func setAge(height: Double) {
        user.height = height
    }
    
    func setGender(gender: User.Gender) {
        user.gender = gender
    }    
}

extension MeasurementViewModel{
    static let MOCK_USERDATA = User(weight: 70, height: 161, age: 24, gender: .male)
}
