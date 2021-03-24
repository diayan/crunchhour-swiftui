//
//  CrunchWindowCard.swift
//  Crunchhour
//
//  Created by diayan siat on 22/03/2021.
//

import SwiftUI

struct CrunchWindowCard: View {
   // @Environment(.\presentationMode) var presentationMode
    @State private var showCloseWindowForm = false
    
    var body: some View {
        VStack {
            
            HStack(alignment: .top){
                VStack(alignment: .leading) {
                    Text("Your five hour window \n opened at 4:00pm")
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .foregroundColor(.primary)
                    Text("Closses in 3h 30mins")
                        .foregroundColor(.primary)
                        .font(.title)
                        .bold()
                }.padding()
                
                Spacer()
                
                CountdownProgress()
                    .frame(width: 80, height: 80, alignment: .center)
            }.padding()
            
            VStack(spacing: 0) {
                
                Divider()
                
                HStack {
                    Button(action: {}) {
                        Text("Edit")
                            .bold()
                            .fixedSize()
                        
                    }.padding().frame(maxWidth: .infinity)
                    
                    Divider()
                    
                    Button(action: {
                        self.showCloseWindowForm.toggle()
                    }, label: {
                        Text("Close Window")
                            .bold()
                            .fixedSize()
                    })
                    .sheet(isPresented: $showCloseWindowForm, content: {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Sheet Content")/*@END_MENU_TOKEN@*/
                    })
                    .padding()
                    .frame(maxWidth: .infinity)
                    
                }.fixedSize(horizontal: false, vertical: true)
            }
        }.frame( height:200)
        .background(Color("foreground"))
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
