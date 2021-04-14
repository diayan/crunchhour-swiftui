//
//  Schedule.swift
//  Crunchhour
//
//  Created by diayan siat on 09/04/2021.
//

import Foundation
import SwiftUI

struct Schedule {
    var day: DayOfWeek
    var duration: String
    var startTime: Date
    @State var isNotify = false
}

enum DayOfWeek: String, CaseIterable {
    case Sunday
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
}
