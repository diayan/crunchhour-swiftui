//
//  TestImagesizer.swift
//  Crunchhour
//
//  Created by diayan siat on 30/04/2021.
//

import SwiftUI

struct TestImagesizer: View {
    var body: some View {
        GeometryReader { geo in
            Image("food")
                .resizable()
                .clipped()
                .scaledToFill()
                .frame(width: geo.size.width, height: 200)
                .cornerRadius(20)
                .background(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray.opacity(0.5), lineWidth: 1.5))
        }.frame(height: 150)
        
        
    }
}

struct TestImagesizer_Previews: PreviewProvider {
    static var previews: some View {
        TestImagesizer()
    }
}
