//
//  ViewController2.swift
//  slideshowappp
//
//  Created by HOUkoku on 2020/09/28.
//  Copyright © 2020 jintaro.tanba. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    var  x:UIImage? = nil
    
    
    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageview.image = x
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
