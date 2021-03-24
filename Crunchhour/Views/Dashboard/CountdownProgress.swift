//
//  CountdownProgress.swift
//  Crunchhour
//
//  Created by diayan siat on 21/03/2021.
//

import SwiftUI

struct CountdownProgress: View {
    var body: some View {

        ZStack {
            ZStack {
                Circle()
                    .trim(from: 0, to: 1)
                    .stroke(Color.green.opacity(0.09), style: StrokeStyle(lineWidth: 10, lineCap: .round))
                    .frame(width: 50, height: 50)
                
                Circle()
                    .trim(from: 0, to: 0.5)
                    .stroke(Color.green, style: StrokeStyle(lineWidth: 10, lineCap: .round))
                    .frame(width: 50, height: 50)
            }.rotationEffect(.init(degrees: -90))
        }
    }
}

struct CountdownProgress_Previews: PreviewProvider {
    static var previews: some View {
        CountdownProgress()
    }
}
