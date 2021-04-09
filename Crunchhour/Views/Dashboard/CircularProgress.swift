//
//  CircularProgress.swift
//  Crunchhour
//
//  Created by diayan siat on 29/03/2021.
//

import SwiftUI



struct CircularProgress: View {
    
    @State var walking = false
    @State var drawProgress = 0
    //@State var totalTime = Text("0:00")
    @State var startTime = Date()
    @State var endtime   = Date()
    
    var body: some View {
        VStack {
            
            DatePicker(
                "Start Time", selection: $startTime,
                displayedComponents: .hourAndMinute
            )
            
            DatePicker(
                "End Time", selection: $endtime,
                displayedComponents: [.hourAndMinute]
            )
           let diffComponents = Calendar.current.dateComponents([.hour
                                                                  , .minute], from: startTime, to: endtime)
            
            let hours = diffComponents.hour! * 60
            let minutes = diffComponents.minute!
            let totalMins = hours + minutes
            let totalSeconds = totalMins * 60

            Text("Mins \(minutes)")
            Text("hours \(diffComponents.hour!)")
            Text("hours to mins \(hours)")
            Text("Total mins \(totalMins)")
            Text("Total mins \(totalSeconds)")
            Text("Total seconds \(Double(totalSeconds))")
            
            ZStack {
                // Inactive
                Circle()
                    .stroke(lineWidth: 10)
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color(.systemGreen).opacity(0.09))
                // Active Ring
                Circle()
                    .trim(from: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, to: CGFloat(drawProgress))
                    .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color(.systemGreen))
                    .rotationEffect(.degrees(-90))
                    .animation(Animation.easeInOut(duration: 120).delay(0).repeatForever(autoreverses: true))
                //started countdown at 9:36am 
            }.onAppear(perform: {
            
                walking.toggle()
                drawProgress = 1
                //totalTime = Text(Date().addingTimeInterval(0.0), style: .timer)
            })
        } // Container for all views
        .padding()
    }
}


struct CircularProgress_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgress()
    }
}
