//
//  CameraView.swift
//  Crunchhour
//
//  Created by diayan siat on 20/04/2021.
//

import SwiftUI

struct CameraView: View {
    @StateObject var camera = CameraModel()
    
    var body: some View {
        ZStack {
            Color.black
            .ignoresSafeArea(.all, edges: .all)
            
            VStack {
                
                
                if camera.isTaken {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "arrow.triangle.2.circlepath.camera")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.white)
                            .clipped()
                    })
                }
                
                Spacer()
                
                HStack {
                    //if photo is taken, show save
                  
                    if camera.isTaken {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("Save")
                                    .foregroundColor(.black)
                                    .fontWeight(.semibold)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal, 20)
                                    .background(Color.white)
                                    .clipShape(Capsule())
                        })
                        
                    }else {
                        Button(action: {camera.isTaken.toggle()}, label: {
                            ZStack {
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 65, height: 65)
                                
                                Circle()
                                    .stroke(Color.white, lineWidth: 2)
                                    .frame(width: 75, height: 75)

                            }
                        })
                    }
                }
            }
        }
    }
}

class CameraModel: ObservableObject {
    @Published var isTaken = false
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
