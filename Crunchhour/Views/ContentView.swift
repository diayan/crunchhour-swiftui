//
//  ContentView.swift
//  Crunchhour
//
//  Created by diayan siat on 19/03/2021.
//

import SwiftUI

struct ContentView: View {
    let fast: Fast
    
    @State private var selection: Tab = .dashboard

    enum Tab {
        case dashboard
        case weight
    }
    
    var body: some View {
        TabView(selection: $selection) {
            DashboardView(fast: fast)
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
    static var fast = Fast.data[0]
    static var previews: some View {
        ContentView(fast: fast)
    }
}
