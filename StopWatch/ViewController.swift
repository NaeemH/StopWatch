//
//  ViewController.swift
//  StopWatch
//
//  Created by Naeem Hossain on 1/29/16.
//  Copyright © 2016 HossainCo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    @IBOutlet var timerLabel: UILabel!
    var time = 0
    
    func increaseTimer(){
        //sets label to one second more
        time++
        timerLabel.text = String(time) // or "\(time)"
    }
    
    @IBAction func play(sender: AnyObject) {
        //want to launch timer here
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        //stops timer from repeating every second
        
        timer.invalidate()
    }
    
    @IBAction func reset(sender: AnyObject) {
        
        timer.invalidate()
        time = 0
        timerLabel.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

