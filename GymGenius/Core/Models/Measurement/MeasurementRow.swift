//
//  RowModel.swift
//  GymGenius
//
//  Created by Ishaan Bhasin on 10/9/23.
//

import Foundation

struct MeasurementRow {
    let rowType: RowType
    let isUnitMetric: Bool = true
    let imageName: String = "plus"
    var rowTitle: String {
        rowType.rawValue
    }

    var unit: String {
        switch rowType {
        case .weight:
            isUnitMetric ? "kg" : "lbs"
        case .height:
            isUnitMetric ? "cm" : "inches"
        case .age:
            "years"
        case .gender:
            ""
        case .bmr:
            "calories"
        }
    }
}
