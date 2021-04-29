//
//  ProgressViewExample.swift
//  Crunchhour
//
//  Created by diayan siat on 29/04/2021.
//

import SwiftUI

struct ProgressViewExample: View {
    @State private var progress = 0.5

    var body: some View {
        VStack {
                 ProgressView(value: 0.25)
                    .scaleEffect(x: 1, y: 8, anchor: .center)


             }
             .progressViewStyle(DarkBlueShadowProgressViewStyle())
    }
}

struct DarkBlueShadowProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .shadow(color: Color(red: 0, green: 0.6, blue: 0.6),
                    radius: 4.0, x: 1.0, y: 2.0)
    }
}

struct ProgressViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewExample()
    }
}
