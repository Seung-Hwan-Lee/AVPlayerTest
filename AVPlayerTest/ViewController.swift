//
//  ViewController.swift
//  AVPlayerTest
//
//  Created by 이승환 on 2017. 4. 12..
//  Copyright © 2017년 이승환. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    let playerView = PlayerView(frame: CGRect(x:0,y:40,width:320,height:200))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        playerView.player = AVPlayer(url: URL(string: "http://172.30.1.55/Movies/SAMOA.E187.151113.HDTV.H264.720p-WITH.mp4")!)
        
        view.addSubview(playerView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playerView.player?.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

