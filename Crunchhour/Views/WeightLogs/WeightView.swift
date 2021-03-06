//
//  WeightView.swift
//  Crunchhour
//
//  Created by diayan siat on 29/04/2021.
//

import SwiftUI

enum ActiveSheet: Identifiable {
    case first, second, third
    var id: Int {
        hashValue
    }
}

struct WeightView: View {
    @Environment(\.presentationMode) private var dismissModal
    @State private var isEditWeight = false
    @State var activeSheet: ActiveSheet?
    
    var body: some View {
        return ZStack {
            NavigationView {
                ScrollView {
                    LazyVStack {
                        Group {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Current Weight")
                                        .foregroundColor(.red)
                                        .font(.caption)
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
                                    Text("Weight Goal")
                                        .foregroundColor(.red)
                                        .font(.caption)
                                    Text("70")
                                        .font(.title)
                                        .bold()
                                        + Text(" kg")
                                        .font(.title)
                                        .bold()
                                }
                            }
                        }
                        FastingGraph()
                        HStack {
                            Text("Your Progress")
                                .foregroundColor(.red)
                                .font(.title2)
                                .bold()
                            Spacer()
                        }.padding(.top)
                        .padding(.bottom)
        
                        VStack {
                            //Color("colorgreen")
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Current")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                    
                                    Text("64")
                                        .font(.title2)
                                        .bold()
                                        
                                        + Text(" kg")
                                        .bold()
                                    
                                }
                                Spacer()
                                VStack(alignment: .center) {
                                    Text("Left")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                    
                                    Text("16")
                                        .font(.title2)
                                        .bold()
                                        
                                        + Text(" kg")
                                        .bold()
                                }
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text("Target")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                    
                                    Text("50")
                                        .font(.title2)
                                        .bold()
                                        
                                        + Text(" kg")
                                        .bold()
                                }
                            }.padding(.bottom)
                            
                            ProgressView(value: 0.25)
                                .scaleEffect(x: 1, y: 6, anchor: .center)
                                .accentColor(Color(.systemGreen))
                                .progressViewStyle(DarkBlueShadowProgressViewStyle())
                        }.frame(height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(8)
                        
                        HStack {
                            Button(action: {
                                activeSheet = .third
                            }, label: {
                                Text("Edit Weight")
                                    .bold()
                            })
                            .padding()
                            .frame(height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(25)
                        }.padding()
                        
                    }.background(Color("foreground"))
                    .padding()
                }.background(Color("foreground"))
                .navigationBarTitle(
                    Text("My Weight"))
                .navigationBarItems(trailing: HStack(spacing: 30) {
                    Button(action: {
                        activeSheet = .first
                    }, label: {
                        Image(systemName: "plus")
                            .foregroundColor(Color(.systemRed))
                    })
                    Button(action: {
                        activeSheet = .second
                    }, label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(Color(.systemRed))
                    })
                }).fullScreenCover(item: $activeSheet) { item in
                    switch item {
                    case .first:
                        AddWeightView()
                    case .second:
                        WeightListView()
                    case .third:
                        WeightListView()
                    }
                }
            }
        }
    }
}

struct DarkBlueShadowProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .shadow(color: Color(red: 0, green: 0.6, blue: 0),
                    radius: 8.0, x: 1.0, y: 2.0)
    }
}


struct WeightView_Previews: PreviewProvider {
    static var previews: some View {
        WeightView()
    }
}
