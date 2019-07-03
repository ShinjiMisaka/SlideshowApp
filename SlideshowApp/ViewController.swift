//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 三坂真治 on 2019/07/03.
//  Copyright © 2019 shinji.misaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nextbutton: UIButton!
    @IBOutlet weak var backbutton: UIButton!
    @IBOutlet weak var ssbuton: UIButton!
    
    let images = [UIImage(named: "apple"),UIImage(named: "onigiri"),UIImage(named: "lemon")]
    var imageIndex = 0
    var timer : Timer!
    var timer_sec:Float = 0
    
    
    
    
    
    @IBOutlet weak var Imageview: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Imageview.image=images[0]
    }
    
    @objc func slide(_ timer: Timer) {
        if imageIndex==2 {
            imageIndex=0
        } else {
            imageIndex+=1
        }
        Imageview.image = images[imageIndex]
    }

    @IBAction func next(_ sender: Any) {
        if imageIndex==2 {
            imageIndex=0
        } else {
            imageIndex+=1
        }
        Imageview.image = images[imageIndex]
    }
    
    @IBAction func back(_ sender: Any) {
        if imageIndex==0 {
            imageIndex=2
        } else {
            imageIndex-=1
        }
        Imageview.image = images[imageIndex]
    }
    
    @IBAction func startstop(_ sender: Any) {
        
        if self.timer == nil {
            ssbuton.setTitle("停止",for: .normal)
            ssbuton.setTitleColor(UIColor.red, for: .normal)
            nextbutton.isEnabled = false
            backbutton.isEnabled = false
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slide(_:)), userInfo: nil, repeats: true)
        }
        else{
            ssbuton.setTitle("再生", for: .normal)
            ssbuton.setTitleColor(UIColor.blue, for: .normal)
            nextbutton.isEnabled = true
            backbutton.isEnabled = true
            self.timer.invalidate()
            self.timer=nil
        }
        
    }
}

