//
//  SettingsView.swift
//  Crunchhour
//
//  Created by diayan siat on 15/04/2021.
//

import SwiftUI

struct SettingsView: View { 
    @State private var enableNotification = false
    var notification = [
        NotificationModel(title: "Window opened", message: "\nYour eating window just opened")
    ]
    var body: some View {
        Form {
            Section(header: Text("Custom Schedule")) {
                Text("Customize your daily eating window")
                    .pickerStyle(SegmentedPickerStyle())
            }
        
            Section(header: Text("Notifications")) {
                SettingSection(notification: notification[0])


//
//                SettingSection()
//
//                SettingSection()
//
//                SettingSection()

            }
        }
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
