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
        let buttonPressed = sender.currentTitle!
        playSound(soundName: buttonPressed)
        
    }
    
// MARK: - Functions
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

