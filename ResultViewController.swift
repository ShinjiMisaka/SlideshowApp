//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 三坂真治 on 2019/07/03.
//  Copyright © 2019 shinji.misaka. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var resultimageview: UIImageView!
    let images = [UIImage(named: "apple"),UIImage(named: "onigiri"),UIImage(named: "lemon")]
    var x=0
    
    override func viewDidLoad() {
        resultimageview.image=images[x]
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
