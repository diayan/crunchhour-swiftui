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
                            .foregroundColor(.secondary)
                            .bold()
                            .font(.subheadline)
                            .padding(.top)
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                            .padding(.bottom, 8)
                        Spacer()
                    }
                    
                    Spacer()

                    CrunchWindowCard()
                    
                    HStack {
                        Text("Today's Note")
                            .foregroundColor(.secondary)
                            .bold()
                            .font(.subheadline)
                            .padding(.top)
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                            .padding(.bottom, 8)
                        Spacer()
                    }

                    CrunchNoteCard()
                }.background(Color("background"))
                .navigationBarTitle(
                    Text("Dashboard"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
