//
//  WeightListView.swift
//  Crunchhour
//
//  Created by diayan siat on 04/05/2021.
//

import SwiftUI

struct WeightListView: View {
    @Environment(\.presentationMode) private var dismissModal

    var body: some View {
        NavigationView {
            ScrollView {
                Text("hi again!")
            }.padding()
            .navigationBarTitle(Text("Add Weight"), displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                self.dismissModal.wrappedValue.dismiss()
            }, label: {
                Image(uiImage: UIImage(systemName: "xmark")!)
            }))
        }
    }
}

struct WeightListView_Previews: PreviewProvider {
    static var previews: some View {
        WeightListView()
    }
}
