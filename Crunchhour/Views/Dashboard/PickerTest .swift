//
//  PickerTest .swift
//  Crunchhour
//
//  Created by diayan siat on 13/04/2021.
//

import SwiftUI
import UIKit

struct PickerTest_: View {
    @State private var startDate = Date()
    @State private var showDate = false
    
    var body: some View {
        
        VStack {
            Button(action: {
                self.showDate.toggle()
            }, label: {
                Text("Pick Date")
            })
            
            HStack(alignment: .bottom) {
                if showDate {
                        DatePicker.init("", selection: $startDate, displayedComponents: [.date, .hourAndMinute])
                            .datePickerStyle(WheelDatePickerStyle())
                    
                }
            }
        }
    }
}

struct PickerTest__Previews: PreviewProvider {
    static var previews: some View {
        PickerTest_()
    }
}
