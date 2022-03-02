//
//  CrunchNoteCard.swift
//  Crunchhour
//
//  Created by diayan siat on 22/03/2021.
//

import SwiftUI

struct CrunchNoteCard: View {
    @State private var editNote = false
    var body: some View {
        VStack {
            HStack(alignment: .center){
                VStack(alignment: .leading) {
                    Text("Monday, March 22")
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                    
                    Text("4:00pm - 9:01pm")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Image("testimage").resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60, alignment: .center)
                    .clipped()
                    .cornerRadius(20)
            }
            
            Text("For dinner, I had a BBQ chicken with pasta in a creamy mushroom sauce and salad with italian dressing for. For desert, I had a full cup of icecream :)")
                .font(.body)
                .foregroundColor(.secondary)
            
            VStack(spacing: 0) {
                Divider()
                HStack {
                    Button(action: {
                        self.editNote.toggle()
                    }, label: {
                        Text("Edit Note")
                            .bold()
                            .foregroundColor(Color(.systemRed))
                            .fixedSize()
                        
                    }).padding()
                    .frame(maxWidth: .infinity)
                    .fullScreenCover(isPresented: $editNote, content: {
                        EndFastView()
                    })
                }
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(15)
        .shadow(color: Color.black, radius: 0, x: 0.0 , y: 0.2)
    }
}


struct CrunchNoteHeader: View {
    var body: some View {
        HStack {
            
        }
    }
    
}
struct CrunchNoteCard_Previews: PreviewProvider {
    static var previews: some View {
        CrunchNoteCard().previewLayout(.sizeThatFits)
    }
}
