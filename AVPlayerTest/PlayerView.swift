//
//  PlayerView.swift
//  AVPlayerTest
//
//  Created by 이승환 on 2017. 4. 12..
//  Copyright © 2017년 이승환. All rights reserved.
//

import UIKit
import AVFoundation

class PlayerView: UIView {
    var player: AVPlayer? {
        get {
            return playerLayer.player
        }
        set {
            playerLayer.player = newValue
        }
    }
    
    var playerLayer: AVPlayerLayer! {
        return layer as! AVPlayerLayer
    }
    
    // Override UIView property
    override static var layerClass: AnyClass {
        return AVPlayerLayer.self
    }
}
