//
//  SettingsView.swift
//  Crunchhour
//
//  Created by diayan siat on 15/04/2021.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) private var dismissModal
    @State private var enableNotification = false
    var schedule: Schedule

    var notification = [
        NotificationModel(title: "Window opened", message: "\nYour eating window just opened"),
        NotificationModel(title: "It's time to fast!", message: "\nYour eating window just closed"),
        NotificationModel(title: "Fast starts in 1 hour", message: "\nYour fast will start in an hour"),
        NotificationModel(title: "Fast ends soon", message: "\nAlmost there, your fast ends in an hour"),
        NotificationModel(title: "Half of the fast", message: "\nYou're are doing great! Make sure to stay hydrated"),
        NotificationModel(title: "5 hour reminder", message: "\nYour manual eating window has been opened for 5 hours and counting"),
        NotificationModel(title: "10 hour reminder", message: "\nYour manual eating window has been opened for 10 hours"),
        NotificationModel(title: "Challenges reminder", message: "\nGet reminded about your active challenges to keep becoming better self.")
    ]
    
    var displayOption = [
        DisplayOptionsModel(title: "Start week on:", day: .Monday, weight: .Pounds, height: .Feet),
        DisplayOptionsModel(title: "Weight", day: .Monday, weight: .Pounds, height: .Feet),
        DisplayOptionsModel(title: "Height:", day: .Monday, weight: .Pounds, height: .Feet)
    ]
    
    var body: some View {

        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Custom Schedule")) {
                        NavigationLink(
                            destination: ScheduleView(schedule: Schedule(day: .Monday, duration: "3 hrs", startTime: Date())),
                            label: {
                                Text("Customize your daily eating window")
                                    .pickerStyle(SegmentedPickerStyle())
                            })
                    }
                    
                    Section(header: Text("Notifications")) {
                        SettingSection(notification: notification[0])
                        SettingSection(notification: notification[1])
                        SettingSection(notification: notification[2])
                        SettingSection(notification: notification[3])
                        SettingSection(notification: notification[4])
                        SettingSection(notification: notification[5])
                        SettingSection(notification: notification[6])
                        SettingSection(notification: notification[7])
                    }
                    
                    Section(header: Text("Display Options")){
                        DisplayOptions(displayOption: displayOption[0])
                        DisplayOptions(displayOption: displayOption[1])
                        
                        DisplayOptions(displayOption: displayOption[2])
                    }
                }
            }
            .navigationTitle("Settings")
            .navigationBarItems(leading: Button(action: {
                self.dismissModal.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.systemRed))
            }))
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(schedule: Schedule(day: .Monday, duration: "3 hrs", startTime: Date()))
    }
}
