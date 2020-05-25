//
//  Game.swift
//  ApplePie
//
//  Created by Burak Donat on 31.01.2019.
//  Copyright © 2019 Burak Donat. All rights reserved.
//

import Foundation

struct Game {
    
    var word : String
    var incorrectMovesRemaining : Int
    var guessedLetters : [Character]
    
    //“Begin with an empty string variable.
    //Loop through each character of word.
    //If the character is in guessedLetters, convert it to a string, then append the letter onto the variable.
    //Otherwise, append _ onto the variable”
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)  //secilen harfi tahmine ekle
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1  //eger basilan harf dogru cevapta yoksa hakkini 1 azalt
        }
    }
    
    var formattedWord : String {      //uzerinde islem yaptigimiz, _______ tahmin alani
        var gueesedWord = ""
        for letter in word{            
            if guessedLetters.contains(letter){ 
                gueesedWord += "\(letter)"
            } else {
                gueesedWord += "_"
            }
        }
        return gueesedWord
    }
}
