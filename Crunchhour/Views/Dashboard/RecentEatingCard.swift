//
//  RecentEatingCard.swift
//  Crunchhour
//
//  Created by diayan siat on 23/03/2021.
//

import SwiftUI

struct RecentEatingCard: View {
    var calendar = Calendar.autoupdatingCurrent
    
    //let today    = calendar.startOfDay(for: Date())
    var body: some View {
            HStack(alignment: .top){
                ForEach(1..<5) {_ in
                    RecentEatingCardItem()
                        .padding(4)
                }
            }.padding()
        .frame( height:200)
        .background(Color("foreground"))
        .cornerRadius(15)
        .padding(.leading)
        .padding(.trailing)
        .shadow(color: Color.black, radius: 0, x: 0.0 , y: 0.2)
    }
}

struct RecentEatingCard_Previews: PreviewProvider {
    static var previews: some View {
        RecentEatingCard()
    }
}
