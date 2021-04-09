//
//  CloseWindowEditor.swift
//  Crunchhour
//
//  Created by diayan siat on 29/03/2021.
//

import SwiftUI

struct CloseWindowEditor: View {
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    @State var startTime = Date()
    @State var endtime   = Date()
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .hour, value: -1, to: startTime)!
        let max = Calendar.current.date(byAdding: .hour, value: 1, to: endtime)!
        return min...max
    }
    
    
    var body: some View {
        VStack {
            DatePicker(
                "Start Time", selection: $startTime,
                displayedComponents: .hourAndMinute
            )
            
            DatePicker(
                "End Time", selection: $endtime,
                displayedComponents: [.hourAndMinute]
            )
            
            let diffComponents = Calendar.current.dateComponents([.hour
                                                                  , .minute], from: startTime, to: endtime)
            let hours = diffComponents.hour
            let minute = diffComponents.minute
            
            Text("\(hours!) : \(minute!)")
        }.padding()
    }
}

struct CloseWindowEditor_Previews: PreviewProvider {
    static var previews: some View {
        CloseWindowEditor()
    }
}
