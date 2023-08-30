//
//  ContentView.swift
//  Memorize
//
//  Created by Felipe Hoffmann on 28/08/23.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["👻", "😈", "🎃", "🕷️"]
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
            .padding()
            .foregroundColor(.orange)
            .font(.largeTitle)
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12.0)
            if (isFaceUp) {
                base
                    .fill(.white)
                base
                    .strokeBorder(lineWidth: 2)
                Text(content)
            } else {
                base
                    .fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
