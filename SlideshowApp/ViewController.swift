//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 三坂真治 on 2019/07/03.
//  Copyright © 2019 shinji.misaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let images = [UIImage(named: "apple"),UIImage(named: "onigiri"),UIImage(named: "lemon")]
    var imageIndex = 0
    
    
    
    @IBOutlet weak var Imageview: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Imageview.image=images[0]
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
    }
}

