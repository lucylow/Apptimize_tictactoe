//
//  ViewController.swift
//  TicTacToe
//
//  Created by Lucy Low on 2018-04-10.
//  Copyright (c) 2018 Lucy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // MARK: Properties
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Actions
    
    var xTurn = true
    
    var numberOfTurns = 0
    
    var x = [Int: Bool]()
    var y = [Int: Bool]()
    
    @IBOutlet weak var winnerResult: UILabel!

    @IBOutlet weak var button1: UIButton!

    @IBOutlet weak var button2: UIButton!
    
    func checkWinner() {
        // check y
        if (xTurn) {
            if (y[1] != nil) {
                if (y[2] != nil && y[3] != nil) {
                    winnerResult.text = "O wins"
                }
                else if (y[4] != nil && y[7] != nil) {
                    winnerResult.text = "O wins"
                }
                else if (y[5] != nil && y[9] != nil) {
                    winnerResult.text = "O wins"
                }
            }
            else if (y[3] != nil) {
                if (y[6] != nil && y[9] != nil) {
                    winnerResult.text = "O wins"
                }
                else if (y[5] != nil && y[7] != nil) {
                    winnerResult.text = "O wins"
                }
            }
            else if (y[4] != nil) {
                if (y[5] != nil && y[6] != nil) {
                    winnerResult.text = "O wins"
                }
            }
            else if (y[7] != nil) {
                if (y[8] != nil && y[9] != nil) {
                    winnerResult.text = "O wins"
                }
            }
            else if (y[2] != nil) {
                if (y[5] != nil && y[8] != nil) {
                    winnerResult.text = "O wins"
                }
            }
        }
            // check x
        else {
            if (x[1] != nil) {
                if (x[2] != nil && x[3] != nil) {
                    winnerResult.text = "X wins"
                }
                else if (x[4] != nil && x[7] != nil) {
                    winnerResult.text = "X wins"
                }
                else if (x[5] != nil && x[9] != nil) {
                    winnerResult.text = "X wins"
                }
            }
            else if (x[3] != nil) {
                if (x[6] != nil && x[9] != nil) {
                    winnerResult.text = "X wins"
                }
                else if (x[7] != nil && x[5] != nil) {
                    winnerResult.text = "X wins"
        
                }
            }
            else if (x[4] != nil) {
                if (x[5] != nil && x[6] != nil) {
                    winnerResult.text = "X wins"
                }
            }
            else if (x[7] != nil) {
                if (x[8] != nil && x[9] != nil) {
                    winnerResult.text = "X wins"
                }
            }
            else if (x[2] != nil) {
                if (x[5] != nil && x[8] != nil) {
                    winnerResult.text = "X wins"
                }
            }
        }
    }
    
    // Action activates when button is clicked
    @IBAction func tappedButton(sender: AnyObject) {
        
        // current button
        let buttonTapped : UIButton = sender as! UIButton
        
        // tag of current button
        let tagTapped = buttonTapped.tag
        
        
        if (buttonTapped.titleLabel?.text != "X" && buttonTapped.titleLabel?.text != "O") {
            if (xTurn) {
                buttonTapped.setTitle("X", forState: UIControlState.Normal)
                x[tagTapped] = true
                xTurn = false
            }
            else {
                buttonTapped.setTitle("O", forState: UIControlState.Normal)
                y[tagTapped] = true
                xTurn = true
            }
            numberOfTurns += 1
            checkWinner()
        }

        // var wintypes = [/[1, 2, 3], /[4, 5, 6], /[7, 8, 9], /[1, 4, 7], /[2, 5, 8], [3, 6, 9], /[1, 5, 9], [3, 5, 7]]

        // checkWinner
    }
  /*
    1 2 3
    4 5 6
    7 6 9
    
    /*
    if( buttonTapped.titleLabel?.text == "X" ) {
    buttonTapped.setTitle("O", forState: UIControlState.Normal)
    } else {
    buttonTapped.setTitle("X", forState: UIControlState.Normal)
    }
    */
    
    
    
    (1, 1) (2, 1) (3, 1)
    (1, 2) (2, 2) (3, 2)
    (1, 3) (2, 3) (3, 3) */
}

    