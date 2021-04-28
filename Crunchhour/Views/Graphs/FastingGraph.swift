//
//  FastingGraph.swift
//  Crunchhour
//
//  Created by diayan siat on 26/04/2021.
//

import SwiftUI

struct FastingGraph: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

func magnitude(of range: Range<Double>) -> Double {
    return range.upperBound - range.lowerBound
}

struct FastingGraph_Previews: PreviewProvider {
    static var previews: some View {
        FastingGraph()
    }
}
