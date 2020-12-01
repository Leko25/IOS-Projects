//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onClick(_ sender: UIButton) {
        sender.alpha = 0.5
        playSound(titleName: sender.currentTitle!)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            sender.alpha = 1.0
        }
    }
    
    func playSound(titleName: String) {
        let url = Bundle.main.url(forResource: titleName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


