//
//  CustomSchedule.swift
//  Crunchhour
//
//  Created by diayan siat on 09/04/2021.
//

import SwiftUI

struct CustomSchedule: View {
    @State private var enableNotification = false

    var body: some View {
        Form {
            Section(header: Text("")) {
                Toggle(isOn: $enableNotification, label: {
                    Text("Monday")
                        .font(.title2)
                        .foregroundColor(.primary)
                        .bold()
                })
                
                if enableNotification {
                    //wrapping List within a navigationlink will show the reveal button
                    List {
                        Text("5 and half").bold() + Text(" hour timed window")
                        Text("Starting at ") + Text("12:00 pm").bold()
                    }
                    
                }
            }
        }    }
}

struct CustomSchedule_Previews: PreviewProvider {
    static var previews: some View {
        CustomSchedule()
    }
}
