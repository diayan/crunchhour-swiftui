//
//  ToggleView.swift
//  Crunchhour
//
//  Created by diayan siat on 14/04/2021.
//

import SwiftUI

struct SectionView: View {
    @State private var enableNotification = false
    var schedule: Schedule
    
    var body: some View {
        Section(header: Text("")) {
            Toggle(isOn: $enableNotification, label: {
                Text("\(schedule.day.rawValue)")
                    .font(.title2)
                    .foregroundColor(.primary)
                    .bold()
            }).pickerStyle(SegmentedPickerStyle())
            
            if enableNotification {
                List {
                    Text("\(schedule.duration)").bold() + Text(" hour timed window")
                    Text("Starting at ") + Text("\(schedule.startTime)").bold()
                }.padding()
            }
        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(schedule:    Schedule(day: DayOfWeek.Sunday, duration: "5hrs", startTime: Date()))
    }
}
