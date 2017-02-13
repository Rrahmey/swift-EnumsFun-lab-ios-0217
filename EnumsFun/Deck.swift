//
//  Deck.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Deck {
    var cards:[Card] = []
    
    init() {
        for eachRank in Rank.ranks{
            for eachSuit in Suit.suits {
                let newCard = Card.init(rank: eachRank, suit: eachSuit)
                cards.append(newCard)
            }
        }
        cards.shuffled()
    }
 
    func split() ->([Card],[Card]) {
        return cards.split()
    }
    
}


