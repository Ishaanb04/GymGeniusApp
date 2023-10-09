//
//  MeasurementTabView.swift
//  GymGenius
//
//  Created by Ishaan Bhasin on 10/8/23.
//

import SwiftUI

struct MeasurementTabView: View {
    @State var vm = MeasurementViewModel()
    var body: some View {
        NavigationStack {
            ScrollView {
                Section(content: {
                    MeasurementViewRow(doubleValueForRow: vm.user.weight, StringValueForRow: nil, rowType: MeasurementRow(rowType: .weight))
                    MeasurementViewRow(doubleValueForRow: vm.user.height, StringValueForRow: nil, rowType: MeasurementRow(rowType: .height))
                    MeasurementViewRow(doubleValueForRow: nil, StringValueForRow: Utilities.doubleToStringFormatterNoDecimal(value: Double(vm.user.age)), rowType: MeasurementRow(rowType: .age))
                    MeasurementViewRow(doubleValueForRow: nil, StringValueForRow: vm.user.gender.rawValue, rowType: MeasurementRow(rowType: .gender))
                }, header: {
                    Text("Core")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.secondaryText)
                })
            }
            .padding()
            .navigationTitle("Measurements")
        }
    }
}

#Preview {
    MeasurementTabView()
}
