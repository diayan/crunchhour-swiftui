//
//  DashboardView.swift
//  Crunchhour
//
//  Created by diayan siat on 22/03/2021.
//

import SwiftUI

struct DashboardView: View {
    @State private var showSettings = false
    @State private var startFast    = false
    
    var body: some View {
        return ZStack {
            NavigationView {
                ScrollView(showsIndicators: false) {
                    LazyVStack {
                        HStack {
                            Text("Current Eating Window")
                                .foregroundColor(.secondary)
                                .bold()
                                .font(.subheadline)
                                .padding(.top)
                                .padding(.bottom)
                            Spacer()
                        }
                        Spacer()
                        CrunchWindowCard()
                        HStack {
                            Text("Recent Note")
                                .foregroundColor(.secondary)
                                .bold()
                                .font(.subheadline)
                                .padding(.top)
                                .padding(.bottom)
                            Spacer()
                        }
                        CrunchNoteCard()
                        HStack {
                            Text("Recent Fast")
                                .foregroundColor(.secondary)
                                .bold()
                                .font(.subheadline)
                                .padding(.top)
                                .padding(.bottom)
                            Spacer()
                        }
                        FastingGraph()
                        HStack {
                            Text("Previous Fasting")
                                .foregroundColor(.secondary)
                                .bold()
                                .font(.subheadline)
                                .padding(.top)
                                .padding(.bottom, 8)
                            Spacer()
                        }
                    }.padding()
                    .background(Color("foreground"))
                }
                .navigationBarTitle(
                    Text("Dashboard"))
                
                .navigationBarItems(leading: Button(action: {
                    self.showSettings.toggle()
                }, label: {
                    Image(systemName: "gearshape")
                        .foregroundColor(Color(.systemRed))
                }).font(Font.system(size: 20, weight: .semibold, design: .rounded)).fullScreenCover(isPresented: $showSettings, content: {
                    SettingsView(schedule: Schedule(day: .Monday, duration: "3 hrs", startTime: Date()))
                }),
                trailing: Button(action: {
                    self.startFast.toggle()
                }, label: {
                    Image(systemName: "plus")
                        .foregroundColor(Color(.systemRed))
                }).font(Font.system(size: 20, weight: .semibold, design: .rounded)).fullScreenCover(isPresented: $startFast, content: {
                    
                }))
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
