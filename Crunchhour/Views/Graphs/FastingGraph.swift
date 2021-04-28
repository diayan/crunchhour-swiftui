//
//  FastingGraph.swift
//  Crunchhour
//
//  Created by diayan siat on 26/04/2021.
//

import SwiftUI

struct FastingGraph: View {

    @State var pickerSelectedItem  = 0
    @State var dataPoints: [[CGFloat]] = [
        [50, 100, 150],
        [150, 100, 50],
        [40, 80, 70]
    ]
    var body: some View {
        ZStack {
            VStack {
                Picker(selection: $pickerSelectedItem, label: Text(""), content: {
                    Text("Weekday").tag(0)
                    Text("Month").tag(1)
                    Text("Year").tag(2)
                }).pickerStyle(SegmentedPickerStyle())
                
                .padding(.horizontal, 24)
                
//                onAppear {
//
//                }
                HStack(spacing: 24) {
                    BarView(value: dataPoints[pickerSelectedItem][0])
                    BarView(value: dataPoints[pickerSelectedItem][1])
                    BarView(value: dataPoints[pickerSelectedItem][2])
                    BarView(value: dataPoints[pickerSelectedItem][0])
                    BarView(value: dataPoints[pickerSelectedItem][1])
                    BarView(value: dataPoints[pickerSelectedItem][2])
                    BarView(value: dataPoints[pickerSelectedItem][0])

                }.padding(.top, 24)
                .animation(.default)
                
            }.frame(height: 320)
            .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
            .cornerRadius(15)
            .padding(.leading)
            .padding(.trailing)
        }
    }
}

struct BarView:  View {
    var value: CGFloat

    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Capsule().frame(width: 30, height: 200)
                    .foregroundColor(Color(.systemGray6))
                Capsule().frame(width: 30, height: value)
                    .foregroundColor(Color(.systemGreen))
            }
            Text("D").padding(.top, 8)
        }
    }
}

struct FastingGraph_Previews: PreviewProvider {
    static var previews: some View {
        FastingGraph()
    }
}
