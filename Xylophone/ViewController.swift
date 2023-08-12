//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation // needed to play sounds

class ViewController: UIViewController {
// MARK: - IBOutlets
    
// MARK: - Properties
    var player = AVAudioPlayer()
    
// MARK: - Setup
    override func viewDidLoad() {
        super.viewDidLoad()
    }

// MARK: - IBActions
    @IBAction func keyPressed(_ sender: UIButton) {
        let buttonPressed = sender.currentTitle! // has to be force unwrapped because currentitle is an optional
        
        playSound(soundName: buttonPressed)
        
        // controls opacity
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            // smooths the animation
            UIView.animate(withDuration: 0.3) {
                // returns to the original color
                sender.alpha = 1.0
            }
        }
    }
    
// MARK: - Functions
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

