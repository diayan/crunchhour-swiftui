//
//  ScheduleView.swift
//  Crunchhour
//
//  Created by diayan siat on 09/04/2021.
//

import SwiftUI

struct ScheduleView: View {
    @State private var startDate = Date()
    @State private var enableNotification = false
    var schedule: Schedule

    var body: some View {
        Form {
            SectionView(schedule: Schedule(day: DayOfWeek.Sunday, duration: "3hrs", startTime: Date()))
            SectionView(schedule: Schedule(day: DayOfWeek.Monday, duration: "3hrs", startTime: Date()))
            SectionView(schedule: Schedule(day: DayOfWeek.Tuesday, duration: "3hrs", startTime: Date()))
            SectionView(schedule: Schedule(day: DayOfWeek.Wednesday, duration: "3hrs", startTime: Date()))
            SectionView(schedule: Schedule(day: DayOfWeek.Thursday, duration: "3hrs", startTime: Date()))
            SectionView(schedule: Schedule(day: DayOfWeek.Friday, duration: "3hrs", startTime: Date()))
            SectionView(schedule: Schedule(day: DayOfWeek.Saturday, duration: "3hrs", startTime: Date()))
            }
        }
    }


struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView(schedule: Schedule(day: .Sunday, duration: "5hr", startTime: Date(), isNotify: false))
    }
}
