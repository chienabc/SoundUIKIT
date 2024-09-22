//
//  ViewController.swift
//  Sound
//
//  Created by CHIEN on 22/9/24.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    var audioPlayer: AVAudioPlayer!

    
    // LÀM ANIMATION
    // ÂM THANH
    // TIMER, AVAUDIOPLAYER
    // BUỎI 4 - ÔN TẬP
    // 1. GITHUB
    // setup môi trường, cấu hình
    // 100% DEV -> GITHUB
    // đọc doc apple -> AVAudioPlayer
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Start(_ sender: Any) {
        
        guard let sound = Bundle.main.path(forResource: "Music-G", ofType: "mp3")
        else {
            print("file not found")
            return
        }
        
        let url = URL(fileURLWithPath: sound)
        
            // xử lý ngoại lệ
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer.play()
        } catch {
            print("Error file not found")
        }
//        audioPlayer.pause()
    }
    
    
    
    
}

