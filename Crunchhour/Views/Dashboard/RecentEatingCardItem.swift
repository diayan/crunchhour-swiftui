//
//  RecentEatingCard.swift
//  Crunchhour
//
//  Created by diayan siat on 22/03/2021.
//

import SwiftUI

struct RecentEatingCardItem: View {
    var body: some View {
        VStack {
            ZStack {
                Text("4")
                    .bold()
                    .foregroundColor(.primary)
                    .font(.title)
                
                CountdownProgress()
                    .frame(width: 80, height: 80, alignment:
                            .center)
            }
            Text("Mon")
                .foregroundColor(.primary)
                .bold()
                .font(.title3)
        }
    }
}

struct RecentEatingCardItem_Previews: PreviewProvider {
    static var previews: some View {
        RecentEatingCardItem()
    }
}
