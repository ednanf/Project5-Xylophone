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
        playSound()
        
    }
    
// MARK: - Functions
    func playSound() {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

