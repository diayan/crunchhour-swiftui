//
//  WeightView.swift
//  Crunchhour
//
//  Created by diayan siat on 29/04/2021.
//

import SwiftUI

struct WeightView: View {
    @Environment(\.presentationMode) private var dismissModal
    @State private var isWeightListShow = false

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
                                .font(.title)
                                .bold()
                            Spacer()
                        }.padding(.leading)
                        .padding(.trailing)
                        
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
                        .padding()
                    }.background(Color("foreground"))
                }.background(Color("foreground"))
                .navigationBarTitle(
                    Text("My Weight"))
                .navigationBarItems(trailing: Button(action: {
                    self.isWeightListShow.toggle()
                }, label: {
                    Image(uiImage: UIImage(systemName: "list.bullet")!)
                })).sheet(isPresented: self.$isWeightListShow) {
                    WeightListView()
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
