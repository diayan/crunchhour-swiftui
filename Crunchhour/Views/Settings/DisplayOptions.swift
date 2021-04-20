//
//  DisplayOptions.swift
//  Crunchhour
//
//  Created by diayan siat on 19/04/2021.
//

import SwiftUI

struct DisplayOptions: View {
    var displayOption: DisplayOptionsModel
    
    var body: some View {
        HStack {
            Text(displayOption.title)
            Spacer()
            Text(displayOption.day.rawValue)
                .bold()
                .foregroundColor(.green)
        }.padding()
    }
}

struct DisplayOptions_Previews: PreviewProvider {
    static var previews: some View {
        DisplayOptions(displayOption: DisplayOptionsModel(title: "Start week on", day: .Monday, weight: .Kilograms, height: .Feet))
    }
}
