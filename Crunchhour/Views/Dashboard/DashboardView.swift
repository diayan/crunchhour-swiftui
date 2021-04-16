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
        return ZStack() {
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
                    }.background(Color("background"))
                }
                .navigationBarTitle(
                    Text("Dashboard"))
                .navigationBarItems(leading: Button(action: {
                    
                }, label: {
                    Text("About")
                        .foregroundColor(.blue)
                }).font(Font.system(size: 16, weight: .semibold, design: .rounded)),
                trailing: Button(action: {
                    self.showSettings.toggle()
                }, label: {
                    Image(systemName: "gearshape")
                        .foregroundColor(.blue)
                }).font(Font.system(size: 20, weight: .semibold, design: .rounded)).sheet(isPresented: $showSettings, content: {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Sheet Content")/*@END_MENU_TOKEN@*/
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
