//
//  DashboardView.swift
//  Crunchhour
//
//  Created by diayan siat on 22/03/2021.
//

import SwiftUI

struct DashboardView: View {
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
                }
                .navigationBarTitle(
                    Text("Dashboard"))
                .navigationBarItems(leading: Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("About")
                        .foregroundColor(.blue)
                }).font(Font.system(size: 16, weight: .semibold, design: .rounded)),
                trailing: Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "gearshape")
                        .foregroundColor(.blue)
                }).font(Font.system(size: 20, weight: .semibold, design: .rounded))
                
                )
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
