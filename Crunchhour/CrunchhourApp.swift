//
//  CrunchhourApp.swift
//  Crunchhour
//
//  Created by diayan siat on 19/03/2021.
//

import SwiftUI

@main
struct CrunchhourApp: App {
    let fast = Fast.data[0]
    var body: some Scene {
        WindowGroup {
            ContentView(fast: fast)
        }
    }
}
