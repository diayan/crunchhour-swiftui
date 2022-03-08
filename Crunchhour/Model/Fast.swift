//
//  DailyFast.swift
//  Crunchhour
//
//  Created by diayan siat on 11/08/2021.
//

import Foundation

struct Fast {
    var title: String
    var subtitle: String?
    var fastingPeriod: Double
    var startTime: String
    var endTime: String
    var state: FastingState?
    var progress: Double?
    var fastingNotes: String?
    var date: Date?
}

extension Fast {
    static var data: [Fast] {
        [
            Fast(title: "Fasting for fun", fastingPeriod: 2.0, startTime: "14:00", endTime: "19:30"),
            Fast(title: "Fasting for fun", fastingPeriod: 2.0, startTime: "14:00", endTime: "19:30"),
            Fast(title: "Fasting for fun", fastingPeriod: 2.0, startTime: "14:00", endTime: "19:30"),
            Fast(title: "Fasting for fun", fastingPeriod: 2.0, startTime: "14:00", endTime: "19:30"),
            Fast(title: "Fasting for fun", fastingPeriod: 2.0, startTime: "14:00", endTime: "19:30")
        ]
    }
}
