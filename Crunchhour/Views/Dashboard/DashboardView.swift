//
//  DashboardView.swift
//  Crunchhour
//
//  Created by diayan siat on 22/03/2021.
//

import SwiftUI

struct DashboardView: View {
    @State private var showSettings = false

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
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                .padding(.bottom, 8)
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
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                .padding(.bottom, 8)
                            Spacer()
                        }
                        
                        CrunchNoteCard()
                        
                        HStack {
                            Text("Recent Fast")
                                .foregroundColor(.secondary)
                                .bold()
                                .font(.subheadline)
                                .padding(.top)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                .padding(.bottom, 8)
                            Spacer()
                        }
                        
                        FastingGraph()
                        
                        HStack {
                            Text("Previous Fasting")
                                .foregroundColor(.secondary)
                                .bold()
                                .font(.subheadline)
                                .padding(.top)
                                .padding(.leading, 20)
                                .padding(.trailing, 20)
                                .padding(.bottom, 8)
                            Spacer()
                        }
                    }
                    .background(Color("foreground"))
                }
                .navigationBarTitle(
                    Text("Dashboard"))
                
                .navigationBarItems(leading: Button(action: {
                    
                }, label: {
                    Text("About")
                        .foregroundColor(Color(.systemRed))
                }).font(Font.system(size: 16, weight: .semibold, design: .rounded)),
                trailing: Button(action: {
                    self.showSettings.toggle()
                }, label: {
                    Image(systemName: "gearshape")
                        .foregroundColor(Color(.systemRed))
                }).font(Font.system(size: 20, weight: .semibold, design: .rounded)).fullScreenCover(isPresented: $showSettings, content: {
                    SettingsView(schedule: Schedule(day: .Monday, duration: "3 hrs", startTime: Date()))
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
