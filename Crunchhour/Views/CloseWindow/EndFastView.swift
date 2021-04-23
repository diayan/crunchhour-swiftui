//
//  EndFastView.swift
//  Crunchhour
//
//  Created by diayan siat on 19/04/2021.
//

import SwiftUI

struct EndFastView: View {
    @State var text           = ""
    static let taskDateFormat: DateFormatter = {
        let formatter       = DateFormatter()
        formatter.dateStyle = .long
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
        VStack {
            
            Text("Congratulations!")
                .font(.title)
                .foregroundColor(.red)
                .bold()
            
            HStack(alignment: .center){
                CountdownProgress()
                Spacer()
                VStack(alignment: .leading) {
                    
                    Text("You fasted for 10 hours !")
                }
            }.padding(.bottom)
            .padding(.top)
            
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
    }
}

struct EndFastView_Previews: PreviewProvider {
    static var previews: some View {
        EndFastView()
    }
}
