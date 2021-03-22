//
//  ContentView.swift
//  Crunchhour
//
//  Created by diayan siat on 19/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return VStack() {
            NavigationView {
                ScrollView {
                    HStack {
                        Text("Current Eating Window")
                            .font(.subheadline)
                            .padding(.top)
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                            .padding(.bottom, 8)
                        Spacer()
                    }
                    CrunchWindowCard()
                }.background(Color("background"))
                .navigationBarTitle(
                    Text("Dashboard")
                        .bold()
                        .fontWeight(.bold)
                        .font(.title),
                    displayMode: .inline)
            }
        }
    }
}

struct CrunchWindowCard: View {
    var body: some View {
        VStack {
    
            HStack(alignment: .top){
                VStack(alignment: .leading) {
                    Text("Your five hour window \n opened at 4:00pm")
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                    Text("Closses in 3h 30mins")
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
                    
                    Button(action: {}) {
                        Text("Close Window")
                            .bold()
                            .fixedSize()
                        
                    }.padding().frame(maxWidth: .infinity)
                    
                }.fixedSize(horizontal: false, vertical: true)
            }
        }.frame( height:200)
        .background(Color("foreground"))
        .cornerRadius(15)
        .padding(.leading)
        .padding(.trailing)
        .shadow(color: Color.black, radius: 0, x: 0.0 , y: 1.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
