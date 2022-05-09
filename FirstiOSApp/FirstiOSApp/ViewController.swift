//
//  ViewController.swift
//  FirstiOSApp
//
//  Created by wanderer on 30/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameImageView: UIImageView!
    @IBOutlet weak var changeNameLbel: UILabel!
    
    @IBOutlet weak var oldUserNameLabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    
    var totalSecond = Int()
//    var timer:Timer?
    
    var timer : Timer = Timer()
    var count : Int = 0
    var timerCounting : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        myImage()
        
        if(timerCounting){
            timerCounting = false
            timer.invalidate()
        }else{
            timerCounting = true
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)
            
        }
    }
    
    //MARK: - make image view circular
    func myImage(){
        nameImageView?.layer.cornerRadius = (nameImageView?.frame.size.width ?? 0.0) / 2
        nameImageView?.clipsToBounds = true
        nameImageView?.layer.borderWidth = 3.0
        nameImageView?.layer.borderColor = UIColor.white.cgColor
    }
    
    //MARK: -Timer function
    @objc func timerCounter() -> Void
    {
        count = count + 1
        let time = secondsToHoursMinutesSeconds(seconds: count)
        //        let timeString = makeTimeString(hours: time.0, minutes: time.1, seconds: time.2)
        let timeString = makeTimeString(minutes: time.0, seconds: time.1)
        timerLabel.text = timeString
    }
    
    func secondsToHoursMinutesSeconds(seconds: Int) -> (Int, Int)
    {
        return (((seconds % 3600) / 60),((seconds % 3600) % 60))
    }
    
    func makeTimeString(minutes: Int, seconds : Int) -> String
    {
        var timeString = ""
        timeString += String(format: "%02d", minutes)
        timeString += " : "
        timeString += String(format: "%02d", seconds)
        return timeString
    }
    
 /*   func secondsToHoursMinutesSeconds(seconds: Int) -> (Int, Int, Int)
    {
        return ((seconds / 3600), ((seconds % 3600) / 60),((seconds % 3600) % 60))
    }
    
    
    
    func makeTimeString(hours: Int, minutes: Int, seconds : Int) -> String
    {
        var timeString = ""
        timeString += String(format: "%02d", hours)
        timeString += " : "
        timeString += String(format: "%02d", minutes)
        timeString += " : "
        timeString += String(format: "%02d", seconds)
        return timeString
    }*/
    
//MARK: -Change Button Action
    @IBAction func changeButton(_ sender: UIButton) {
        changeNameLbel.text = "Hey Hi Amit"
        print("Yes you switch the branch")
        oldUserNameLabel.text = "Hello Amit this side Json!"
    }
}

