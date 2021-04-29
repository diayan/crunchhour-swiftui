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
    @State private var showCloseWindowForm = false
    @State private var showDatePicker      = false
    @State private var startDate           = Date()
    @State private var endDate             = Date()
    
    var body: some View {
        VStack {
            
            HStack(alignment: .top){
                VStack(alignment: .leading) {
                    Text("Your five hour window \n opened at 4:00pm")
                        .bold()
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.title2)
                        .foregroundColor(Color(.systemRed))
                    
                    Text("Closses in 3h 30 mins")
                        .foregroundColor(.black)
                        .font(.body)
                        .padding(.top, 4)
                }
                Spacer()
                
                CountdownProgress()
                    .frame(width: 100, height: 100, alignment: .center)
            }.padding()
            .padding(.top, 8)
            
            Group {
                DatePicker(selection: $startDate, displayedComponents: [.hourAndMinute]){
                    Text("Start Time")
                        .bold()
                }
                
                DatePicker(selection: $endDate, displayedComponents: [.hourAndMinute]) {
                    Text("End Time")
                        .bold()
                }
            }.padding(.leading)
            .padding(.trailing)
            .padding(.bottom, 8)
            .padding(.top, 8)

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
        }.frame( height:320)
        .background(Color(.white))
        .cornerRadius(15)
        .padding(.leading)
        .padding(.trailing)
        .shadow(color: Color.black, radius: 0, x: 0.0 , y: 0.2)
    }    
}

struct CrunchWindowCard_Previews: PreviewProvider {
    static var previews: some View {
        CrunchWindowCard()
    }
}
