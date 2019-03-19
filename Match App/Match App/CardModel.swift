//
//  CardModel.swift
//  Match App
//
//  Created by Ady Lau on 01/02/2019.
//  Copyright © 2019 Ady Lau. All rights reserved.
//

import Foundation

class CardModel{
    
    func getCards() -> [Card]{
        
        //Declare an array to store the generated cards
        var generatedCardsArray = [Card]()
        
        //Declare an array to store numbers we've already generated
        var storedNumber = [Int]()
        
        //Randomly generate pair of cards
        while(storedNumber.count < 8){
            
            //Get a random number
            let randomNumber = arc4random_uniform(13) + 1
            
            //Ensure that the random number isn't the one we already have
            if(storedNumber.contains(Int(randomNumber)) == false){
                //Create the first card object
                let cardOne = Card()
                cardOne.imageName = "card\(randomNumber)"
                generatedCardsArray.append(cardOne)
                
                //Create the second card object
                let cardTwo = Card()
                cardTwo.imageName = "card\(randomNumber)"
                generatedCardsArray.append(cardTwo)
                
                //Stored the number into the array
                storedNumber.append(Int(randomNumber))
                
                //print(randomNumber)
                
            }
            
        }
        
        //Randomize the array
        for i in 0...generatedCardsArray.count - 1{
            
            //Find a random number
            let randomNumber = Int(arc4random_uniform(UInt32(generatedCardsArray.count)))
            
            print(randomNumber)
            
            //Swap the two cards
            let temporaryStorage = generatedCardsArray[i]
            generatedCardsArray[i] = generatedCardsArray[randomNumber]
            generatedCardsArray[randomNumber] = temporaryStorage
        }
        
        
        //Return the array
        return generatedCardsArray
        
    }
        
}

