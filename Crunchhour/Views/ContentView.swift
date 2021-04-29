//
//  ContentView.swift
//  Crunchhour
//
//  Created by diayan siat on 19/03/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .dashboard

    enum Tab {
        case dashboard
        case weight
    }
    
    var body: some View {
        TabView(selection: $selection) {
            DashboardView()
                .tabItem {
                    Label("Home", systemImage: "rectangle.3.offgrid")
                }
                .tag(Tab.dashboard)
            
            WeightView()
                .tabItem {
                    Label("Weight", systemImage: "staroflife")
                }.tag(Tab.weight)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
