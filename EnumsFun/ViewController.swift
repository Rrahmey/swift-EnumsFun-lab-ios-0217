//
//  ViewController.swift
//  EnumsFun
//
//  Created by Jim Campagno on 7/20/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var opponentCardLabel: UILabel!
    @IBOutlet weak var playerCardLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var opponentScoreLabel: UILabel!
    @IBOutlet weak var flipCardButton: UIButton!
    
    let warGame = GameEngine(player1: "You", player2: "Opponent")
    
    var you: Player {
        return warGame.player1
    }
    
    var opponent: Player{
        return warGame.player2
    }
    
    
    @IBAction func flipCard(_ sender: UIButton) {
        let(winner, yourCard, opponentCard) = warGame.playOneTurn()
        
        if let yourCard = yourCard{
            playerCardLabel.text = yourCard.description
        }
        playerScoreLabel.text = String(you.hand.size)
        
        if let opponentCard = opponentCard{
            opponentCardLabel.text = opponentCard.description
        }
        opponentScoreLabel.text = String(opponent.hand.size)
        
        winnerLabel.text = winner.name
        checkForEndOfGame()
        
    }
    
    func checkForEndOfGame() {
        if warGame.gameOver(){
            print("yes")
        }
    }
    
}
