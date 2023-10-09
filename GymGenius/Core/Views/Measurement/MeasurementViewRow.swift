//
//  MeasurementViewRow.swift
//  GymGenius
//
//  Created by Ishaan Bhasin on 10/8/23.
//

import SwiftUI

struct MeasurementViewRow: View {
    let doubleValueForRow: Double?
    let StringValueForRow: String?

    let rowType: MeasurementRow
    var body: some View {
        HStack {
            Text(rowType.rowTitle.capitalized)
                .foregroundStyle(Color.primary)
                .fontWeight(.bold)
            Spacer()
            if let rowVal = doubleValueForRow {
                Text(Utilities.doubleToStringFormatter(value: rowVal) + " " + rowType.unit)
                    .foregroundStyle(Color.secondary)
            } else if let genderValue = StringValueForRow {
                Text(genderValue)
                    .foregroundStyle(Color.secondary)
            }

            NavigationLink {
                AddMeasurementView(tittleText: rowType.rowTitle)
            } label: {
                Image(systemName: rowType.imageName)
                    .frame(width: 30, height: 30)
                    .background(Color.accent.opacity(0.5).clipShape(RoundedRectangle(cornerRadius: 5.0)))
            }
            .padding(.leading, 4)
        }
    }
}

#Preview {
    List {
        MeasurementViewRow(doubleValueForRow: 70, StringValueForRow: nil, rowType: MeasurementRow(rowType: .weight))
    }
}
