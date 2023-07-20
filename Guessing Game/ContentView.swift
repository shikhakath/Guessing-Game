//
//  ContentView.swift
//  Guessing Game
//
//  Created by Shikha Kathrani on 7/20/23.
//

import SwiftUI

var numberToGuess = 0
var lowRange = 0
var highRange = 100
var totalGuesses = 10
var guessesUsed = 0


struct ContentView: View {
    @State var gameName = "Guessing Game"
    @State var topText = ""
    @State var guessCountLabel=""
    @State var nextGuess = ""
    @State var buttonLabel = "submit"
    @State var gameOn = true
    
    
    var body: some View {
        VStack (alignment: .center) {
            Text(gameName)
                .font(.system(size: 40))
            Spacer()
            Text(topText)
                .font(.system(size: 30))
            Text(guessCountLabel)
                .font(.system(size: 20))
            Spacer()
            TextField("Next guess",text:$nextGuess)
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
            Button(buttonLabel) {
                if(gameOn) {
                    if let l = Int(nextGuess) {
                        processGuess(l)
                    }
                } else {
                    initializeGame()
                }
            }
            .font(.system(size:40))
            .padding()
            .background(.yellow)
            .clipShape(Capsule())
            Spacer()
        }
        .onAppear(perform: initializeGame)
    }
    func processGuess (_ guessedNumber: Int){
        print("process guessed called. guess = \(guessedNumber)")
    }
    func initializeGame (){
        print("initialized game called.")
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
