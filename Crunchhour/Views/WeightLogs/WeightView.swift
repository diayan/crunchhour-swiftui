//
//  WeightView.swift
//  Crunchhour
//
//  Created by diayan siat on 29/04/2021.
//

import SwiftUI

struct WeightView: View {
    var body: some View {
        return ZStack {
            NavigationView {
                ScrollView {
                    LazyVStack {
                        Group {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("CURRENT WEIGHT")
                                        .foregroundColor(.black)
                                        .font(.caption)
                                        .bold()
                                    
                                    Spacer(minLength: 2)
                                    
                                    Text("64")
                                        .font(.title)
                                        .bold()
                                        
                                        + Text(" kg")
                                        .font(.title)
                                        .bold()
                                }
                                
                                Spacer()
                                
                                VStack(alignment: .leading) {
                                Text("WEIGHT GOAL")
                                    .foregroundColor(.black)
                                    .font(.caption)
                                    .bold()
                                    
                                    Text("70")
                                        .font(.title)
                                        .bold()
                                        
                                        + Text(" kg")
                                        .font(.title)
                                        .bold()
                                }
                            }.padding()
                        }
                        
                        FastingGraph()
                       
                        HStack {
                            Text("Your Progress")
                                .bold()
                            Spacer()
                        }.padding()
                        
                    }.background(Color("foreground"))
                }.background(Color("foreground"))
                .navigationBarTitle(
                    Text("My Weight")
                )
            }
        }
    }
}

struct WeightView_Previews: PreviewProvider {
    static var previews: some View {
        WeightView()
    }
}
