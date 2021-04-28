//
//  EmojiView.swift
//  Crunchhour
//
//  Created by diayan siat on 23/04/2021.
//

import SwiftUI

struct EmojiView: View {
    let emojiFeeling: EmojiFeeling
    
    var body: some View {
        VStack {
            ZStack {
                Text(emojiFeeling.emoji)
                    .shadow(radius: 3)
                    .font(.largeTitle)
                    .frame(width: 50, height: 50, alignment: .center)
                    .overlay(
                        Circle().stroke(Color.yellow)
                    )
            }
            Text(emojiFeeling.description)
                .bold()
                .foregroundColor(.secondary)
                .padding(4)
        }.padding(4)
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(emojiFeeling: EmojiFeeling(emoji: "🥺", description: "Ok"))
    }
}
