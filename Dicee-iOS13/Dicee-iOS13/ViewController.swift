//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    let diceImages = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onRoll(_ sender: UIButton) {
        let rollValuesOne = Int.random(in: 0..<diceImages.count)
        let rollValuesTwo = Int.random(in: 0..<diceImages.count)
        diceImageViewOne.image = diceImages[rollValuesOne]
        diceImageViewTwo.image = diceImages[rollValuesTwo]
        
        /*
         diceImages.randomElement()
         */
    }
}

