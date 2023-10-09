//
//  AddMeasurementView.swift
//  GymGenius
//
//  Created by Ishaan Bhasin on 10/8/23.
//

import SwiftUI

struct AddMeasurementView: View {
    let tittleText: String
    @State var textFieldText: String = ""

    var body: some View {
        VStack {
            Text(tittleText)
                .font(.headline)
                .foregroundStyle(Color.gray)
            TextField("Enter \(tittleText.capitalized) ...", text: $textFieldText)

            Spacer()
        }
        .navigationTitle("Add Measurement")
    }
}

#Preview {
    NavigationStack {
        AddMeasurementView(tittleText: "WEIGHT")
    }
}
