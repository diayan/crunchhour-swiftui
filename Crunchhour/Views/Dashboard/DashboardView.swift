//
//  DashboardView.swift
//  Crunchhour
//
//  Created by diayan siat on 22/03/2021.
//

import SwiftUI

struct DashboardView: View {
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
                    
                    HStack {
                        Text("Recent Eatings")
                            .foregroundColor(.secondary)
                            .bold()
                            .font(.subheadline)
                            .padding(.top)
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                            .padding(.bottom, 8)
                        Spacer()
                    }
                
                    RecentEatingCard()
                    
                    HStack {
                        Text("Previous Fastrings")
                            .foregroundColor(.secondary)
                            .bold()
                            .font(.subheadline)
                            .padding(.top)
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                            .padding(.bottom, 8)
                        Spacer()
                    }
                }.background(Color("background"))
                .navigationBarTitle(
                    Text("Dashboard"))
            }
        }    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
