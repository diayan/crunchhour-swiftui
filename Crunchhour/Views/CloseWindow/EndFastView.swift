//
//  EndFastView.swift
//  Crunchhour
//
//  Created by diayan siat on 19/04/2021.
//

import SwiftUI

struct EndFastView: View {
    @Environment(\.presentationMode) private var dismissModal

    @State var text           = ""
    static let taskDateFormat: DateFormatter = {
        let formatter         = DateFormatter()
        formatter.dateStyle   = .long
        return formatter
    }()
    let startDate = Date()
    let endDate   = Date()
    
    private let emojiFeelingList  = [
        EmojiFeeling(emoji: "😃", description: "Great!"),
        EmojiFeeling(emoji: "😅", description: "Good!"),
        EmojiFeeling(emoji: "🥺", description: "Ok!"),
        EmojiFeeling(emoji: "😑", description: "Distracted!"),
        EmojiFeeling(emoji: "😖", description: "Hungry!")
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Congratulations!")
                    .font(.title)
                    .foregroundColor(.red)
                    .bold()
                
                HStack(alignment: .center){
                    CountdownProgress()
                    VStack(alignment: .leading) {
                        Text("You fasted for 10 hours !")
                        HStack {
                            Image(uiImage: UIImage(systemName: "clock")!)
                            Text("14h 13m")
                        }
                    }.padding(.leading)
                    Spacer()
                    
                }.padding(.bottom)
                .padding(.top)
                
                Group {
                    HStack {
                        Text("Started")
                            .foregroundColor(.primary)
                            .bold()
                        
                        Spacer()
                        
                        Text("\(startDate, formatter: Self.taskDateFormat)")
                            .foregroundColor(.secondary)
                        Image(uiImage: UIImage(systemName: "pencil")!)
                            .padding(2)
                    }.padding(.bottom)
                    .padding(.top)
                    
                    HStack {
                        Text("Finished")
                            .foregroundColor(.primary)
                            .bold()
                        
                        Spacer()
                        
                        Text("\(startDate, formatter: Self.taskDateFormat)")
                            .foregroundColor(.secondary)
                        Image(uiImage: UIImage(systemName: "pencil")!)
                            .padding(2)
                        
                    }.padding(.bottom)
                }
                
                Divider()
                
                Group {
                    HStack {
                        Text("Tell us how you feel!")
                            .bold()
                            .padding(.top)
                            .padding(.bottom)
                        Spacer()
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 10) {
                            ForEach(0..<emojiFeelingList.count) { index in
                                EmojiView(emojiFeeling: emojiFeelingList[index])
                            }
                        }.padding()
                    }.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    HStack {
                        Image(systemName: "camera")
                        Text("Share your fast breaker")
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.red)
                    .background(Color.white)
                    .cornerRadius(40)
                })
                
                Group {
                    HStack {
                        Text("Add a note")
                            .bold()
                            .padding(.top)
                            .padding(.bottom)
                        Spacer()
                    }
                    
                    TextEditor(text: $text)
                        .padding()
                        .frame(height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.gray.opacity(0.5), lineWidth: 1.5))
                        .foregroundColor(self.text == "Type here" ? .gray : .primary)
                        .onAppear {
                            // remove the placeholder text when keyboard appears
                            NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { (noti) in
                                withAnimation {
                                    if self.text == "Type here" {
                                        self.text = ""
                                    }
                                }
                            }
                            // put back the placeholder text if the user dismisses the keyboard without adding any text
                            NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { (noti) in
                                withAnimation {
                                    if self.text == "" {
                                        self.text = "Type here"
                                    }
                                }
                            }
                        }
                }
                Spacer()
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Save")
                            .bold()
                    })
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(50)
                }
            }.padding()
            .navigationBarTitle(Text("Close Window"), displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                self.dismissModal.wrappedValue.dismiss()
            }, label: {
                Image(uiImage: UIImage(systemName: "xmark")!)
            }))
        }
        
    }
}

struct EndFastView_Previews: PreviewProvider {
    static var previews: some View {
        EndFastView()
    }
}
