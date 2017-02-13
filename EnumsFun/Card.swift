//
//  Card.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

enum Suit: String {
    
    static let suits:[Suit] = [.club, .heart, .spade, .diamond]
    
    case spade = "♠️"
    case heart = "♥️"
    case diamond = "♦️"
    case club = "♣️"
}

enum Rank: Int {
    
    static let ranks: [Rank] = [.ace,.two,.three,.four,.five,.six,.seven,.eight,.nine,.ten,.jack,.queen,.king]
    
    
    case two = 2
    case three = 3
    case four = 4
    case five = 5
    case six = 6
    case seven = 7
    case eight = 8
    case nine = 9
    case ten = 10
    case jack = 11
    case queen = 12
    case king = 13
    case ace = 14
    
    var stringValue:String {
        switch self {
        case .ace:
            return "A"
        case .jack:
            return "J"
        case .queen:
            return "Q"
        case .king:
            return "K"
        default:
            return "\(rawValue)"
        }
    }

}




class Card {
    var suit:Suit
    var rank:Rank
    var description:String {
        return rank.stringValue + suit.rawValue
    }
    
    init(rank: Rank,suit: Suit) {
        self.rank = rank
        self.suit = suit
        
    }
    
    
}

