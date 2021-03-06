//
//  Player.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Player {
    var name:String
    var hand:Hand
    
    init(name:String,hand:Hand) {
        self.name = name
        self.hand = hand
    }
    
    //checks is there are cards left in hand
    func hasCards()-> Bool {
        if hand.cards.isEmpty == true {
            return false
        } else {
            return true
        }
    }
    
    func flip() -> Card? {
        if hasCards() == true {
            return hand.flip()
        } else {
            return nil
        }
    }
    
    func give(card: Card) {
          return hand.give(card: card)
        }
    
    func lose(card:Card){
        return hand.lose(card: card)
    }
    
    
    
}

