//
//  Hand.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Hand {
    var cards: [Card]
    
    //returns size of hand
    var size:Int {
        return cards.count
    }
    
    init(cards:[Card]) {
        self.cards = cards
    }
    
    //return top card
    func flip() -> Card? {
        if cards.isEmpty {
            return nil
        } else {
            let topCard:Card = cards[0]
            cards.remove(at: 0)
            return topCard
        }
    }
    
    //adds card to bottom of hand
    func give(card:Card) {
        cards.append(card)
    }
    
    //removes card
    func lose(card:Card){
        for (index,aCard) in cards.enumerated() {
            if card.description == aCard.description {
                cards.remove(at: index)
            }
        }
    }
    
    
    

    
}
