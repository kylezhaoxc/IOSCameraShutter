//
//  ViewController.swift
//  FastDemo
//
//  Created by KyleZhao on 16/4/6.
//  Copyright © 2016年 KyleZhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var t:UIImageView!
    @IBOutlet weak var lt:UIImageView!
    @IBOutlet weak var lb:UIImageView!
    @IBOutlet weak var rt:UIImageView!
    @IBOutlet weak var rb:UIImageView!
    @IBOutlet weak var b:UIImageView!
    
    let imgw:CGFloat=240.0
    let imgh:CGFloat=128.0
    override func viewDidLoad() {
        super.viewDidLoad()
        startExpand()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func startExpand(){
        let durmulv:CGFloat=2*20.0
        let hfsqr3:CGFloat=sqrt(3)/2 as CGFloat
        
        UIView.animateKeyframesWithDuration(2, delay: 0, options:.Repeat, animations:
            {
                UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: 2, animations: {
                    self.lt.center.x += (durmulv/2)*2.5
                    self.lt.center.y -= (hfsqr3*durmulv)*2.5
                    
                    self.t.center.x += durmulv*2.5
                    
                    self.b.center.x -= durmulv*2.5
                    
                    self.lb.center.x -= (durmulv/2)*2.5
                    self.lb.center.y -= (hfsqr3*durmulv)*2.5
                    
                    self.rt.center.x += (durmulv/2)*2.5
                    self.rt.center.y += (hfsqr3*durmulv)*2.5
                    
                    self.rb.center.x -= (durmulv/2)*2.5
                    self.rb.center.y += (hfsqr3*durmulv)*2.5
                    

                })
            }
            
            
            , completion: nil)
        }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

