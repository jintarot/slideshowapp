//
//  ViewController.swift
//  slideshowapp
//
//  Created by HOUkoku on 2020/09/25.
//  Copyright © 2020 jintaro.tanba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var nowIndex:Int = 0
    var timer:Timer!
    
    @IBOutlet weak var b2: UIButton!
    var open = [
        UIImage(named: "pic1")!,
        UIImage(named: "pic2")!,
        UIImage(named: "pic3")!
    ]
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func b1(_ sender: Any) {
        
        imageView.image = open[nowIndex+1]
        nowIndex = nowIndex+1
       
        if (nowIndex>2){
            nowIndex = 0
            
        }
        
        
    }
    @IBAction func b2(_ sender: Any) {
        if (timer == nil){
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            b2.setTitle("停止",for: .normal)
            
        }else{
            timer.invalidate()
            timer = nil
            b2.setTitle("停止",for: .normal)
            
        }
        
        
    }
    
    
    
    
    
    @objc func changeImage(){
        nowIndex += 1
        if (nowIndex==open.count){
            nowIndex = 0
        }
        imageView.image = open[nowIndex]
        
    }
    
    
    @IBAction func 戻る(_ sender: Any) {
        
        imageView.image = open[nowIndex-1]
        nowIndex = nowIndex-1
        
        if (nowIndex<0){
            nowIndex = 2
            
            
            
            
            
            
            
        }
        
        
        
    }
    @IBAction func b4(_ sender: Any) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let resultViewController: ViewController2 = segue.destination as! ViewController2
        resultViewController.x = open[nowIndex]
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}
