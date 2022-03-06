//
//  DailyFast.swift
//  Crunchhour
//
//  Created by diayan siat on 11/08/2021.
//

import Foundation

struct DailyFast {
    var title: String
    var subtitle: String?
    var timeTillEnd: String
    var startTime: String
    var endTime: String
}

extension DailyFast {
    static var data: [DailyFast] {
        [
            DailyFast(title: "Fasting for fun", timeTillEnd: "2hrs", startTime: "14:00", endTime: "19:30"),
            DailyFast(title: "Fasting for fun", timeTillEnd: "2hrs", startTime: "14:00", endTime: "19:30"),
            DailyFast(title: "Fasting for fun", timeTillEnd: "2hrs", startTime: "14:00", endTime: "19:30"),
            DailyFast(title: "Fasting for fun", timeTillEnd: "2hrs", startTime: "14:00", endTime: "19:30"),
            DailyFast(title: "Fasting for fun", timeTillEnd: "2hrs", startTime: "14:00", endTime: "19:30")
        ]
    }
}
