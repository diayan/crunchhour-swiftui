//
//  SettingSection.swift
//  Crunchhour
//
//  Created by diayan siat on 15/04/2021.
//

import SwiftUI

struct SettingSection: View {
    @State private var enableNotification = false
    var notification: NotificationModel
    
    var body: some View {
        Toggle(isOn: $enableNotification, label: {
            Text("\(notification.title)").bold() + Text("\n\(notification.message)")
            
        }).pickerStyle(SegmentedPickerStyle())
        .padding()
    }
}

struct SettingSection_Previews: PreviewProvider {
    static var previews: some View {
        SettingSection(notification: NotificationModel(title: "Window opened", message: "\nYour eating window just opened"))
    }
}
