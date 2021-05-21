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

    var body: some View {
        NavigationView {
            ScrollView {
                DatePicker(selection: $date, displayedComponents: .date, label: {
                    Text("Date").bold()
                }).padding(.top)
                
                Divider()
                
                HStack {
                    Text("Username")
                        .bold()
                    
                    Spacer()
                    
                    Text("105kg")
                }
                                
            }.padding()
            .navigationBarTitle(Text("Weight Log "), displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                self.dismissModal.wrappedValue.dismiss()
            }, label: {
                Image(uiImage: UIImage(systemName: "xmark")!)
            }))
        }
    }
}

struct AddWeightView_Previews: PreviewProvider {
    static var previews: some View {
        AddWeightView()
    }
}
