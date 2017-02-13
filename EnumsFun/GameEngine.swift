//
//  GameEngine.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class GameEngine {
    
    var player1:Player
    var player2:Player
    var deck: Deck
    
    
    init(player1:String, player2:String) {
        self.deck = Deck()
        deck.split()
        self.player1 = Player(name: player1, hand:Hand(cards:deck.split().0))
        self.player2 = Player(name: player2, hand:Hand(cards: deck.split().1))
    }
    
    
    func playOneTurn() -> (Player, Card?, Card?){
        if let cardPlayer1 = player1.flip(){
            if let cardPlayer2 = player2.flip(){
                if cardPlayer1.rank.rawValue > cardPlayer2.rank.rawValue || cardPlayer1.rank.rawValue == cardPlayer2.rank.rawValue{
                    return (player1, cardPlayer1, cardPlayer2)
                } else {
                    return (player2, cardPlayer1, cardPlayer2)
                }
                
            }else {
                    return ( player1, cardPlayer1, nil)
                }
        }else {
            let cardplayer2 = player2.flip()!
                return (player2, nil, cardplayer2 )
            }
        }
    
    
    func award(cards:[Card], player:Player){
        for card in cards {
            player.give(card: card)
        }
        
    }


    func gameOver() -> Bool {
        return !player1.hasCards() || !player2.hasCards()
}

    
}


