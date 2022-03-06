//
//  AddWeightView.swift
//  Crunchhour
//
//  Created by diayan siat on 09/05/2021.
//

import SwiftUI

struct AddWeightView: View {
    @Environment(\.presentationMode) private var dismissModal
    @State private var date           = Date()

    init() {
        UIDatePicker.appearance().tintColor = UIColor.init(Color(.red)) // changes text color
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                HStack {
                    Text("Username")
                        .bold()
                    Spacer()
                    
                    Text("105kg")
                        .bold()
                }.padding(.top)

                Divider()

                DatePicker(selection: $date, displayedComponents: .date, label: {
                    Text("Date").bold()
                })
    
            }.padding()
            .background(Color("foreground"))
            .navigationBarTitle(Text("Weight Log "), displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                self.dismissModal.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.systemRed))
            }))
        }
    }
}

struct AddWeightView_Previews: PreviewProvider {
    static var previews: some View {
        AddWeightView()
    }
}
