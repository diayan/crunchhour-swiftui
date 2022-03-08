//
//  CrunchWindowCard.swift
//  Crunchhour
//
//  Created by diayan siat on 22/03/2021.
//

import SwiftUI
import Foundation

struct CrunchWindowCard: View {
    // @Environment(.\presentationMode) var presentationMode
    let fast: Fast
    @State private var showCloseWindowForm = false
    @State private var showDatePicker      = false
    @State private var startDate           = Date()
    @State private var endDate             = Date()
    
    var body: some View {
        VStack {
            HStack{
                VStack(alignment: .leading) {
                    
                    Text("Your five hour window \nopened at 4:00pm")
                        .bold()
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.title3)
                        .foregroundColor(Color(.systemRed))
                    
                    Text("Closes in 3h 30 mins")
                        .foregroundColor(.secondary)
                        .font(.caption)
                }
                Spacer()
                CountdownProgress()
                    .padding(.leading, 4)
            }
            .padding(.bottom)
            .padding(.top)
    
            Group {
                DatePicker(selection: $startDate, displayedComponents: [.hourAndMinute]){
                    Text("Start Time")
                        .foregroundColor(Color(.label))
                }.accentColor(.red)
                
                DatePicker(selection: $endDate, displayedComponents: [.hourAndMinute]) {
                    Text("End Time")
                        .foregroundColor(Color(.label))
                }.accentColor(.red)
            }
            
            VStack(spacing: 0) {
                Divider()
                HStack() {
                    Button(action: {
                        self.showCloseWindowForm.toggle()
                    }, label: {
                        Text("Close Window")
                            .foregroundColor(Color(.systemRed))
                            .bold()
                            .fixedSize()
                    })
                    .fullScreenCover(isPresented: $showCloseWindowForm, content: {
                        EndFastView()
                    })
                    .padding()
                    .frame(maxWidth: .infinity)
                }.fixedSize(horizontal: false, vertical: true)
            }
        }.padding()
            .background(Color(.systemBackground))
            .cornerRadius(15)
            .shadow(color: Color.black, radius: 0, x: 0.0 , y: 0.2)
    }
}

struct CrunchWindowCard_Previews: PreviewProvider {
    static var fast = Fast.data[0]
    
    static var previews: some View {
        CrunchWindowCard(fast: fast)
            .previewLayout(.sizeThatFits)
    }
}
