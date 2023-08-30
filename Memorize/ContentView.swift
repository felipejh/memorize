//
//  ContentView.swift
//  Memorize
//
//  Created by Felipe Hoffmann on 28/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView()
            }
        }
            .padding()
            .foregroundColor(.orange)
            .font(.largeTitle)
    }
}


struct CardView: View {
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12.0)
            if (isFaceUp) {
                base
                    .fill(.white)
                base
                    .strokeBorder(lineWidth: 2)
                Text("👻")
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
