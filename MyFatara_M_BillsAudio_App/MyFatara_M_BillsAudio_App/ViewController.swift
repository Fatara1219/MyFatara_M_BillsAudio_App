//
//  ViewController.swift
//  MyFatara_M_BillsAudio_App
//
//  Created by Fatara Muhammad on 8/18/20.
//  Copyright © 2020 Fatara Muhammad. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let sound = Bundle.main.path(forResource: "teen-titans-theme-song 2", ofType:"mp3")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch {
            print(error)
        }
    }
    
        @IBAction func pauseAudio(_ sender: Any) {
            audioPlayer.pause()
        }
        
    @IBAction func playAudio(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func stopAudio(_ sender: Any) {
        audioPlayer.stop()
    }
}



