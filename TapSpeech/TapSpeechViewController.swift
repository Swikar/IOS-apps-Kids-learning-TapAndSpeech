//
//  TapSpeechViewController.swift
//  TapSpeech
//
//  Created by Swikar  on 12/20/15.
//  Copyright © 2015 AppsAndStudio. All rights reserved.
//

import UIKit
import AVFoundation

class TapSpeechViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func fruitButton(sender: UIButton) {
        
        let digit = sender.currentTitle
        textLabel.text = digit
        
        let url = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(digit, ofType: "m4a")!)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: url)
        } catch {
            //couldn't load file
        }
        
        audioPlayer.play()
    }
}