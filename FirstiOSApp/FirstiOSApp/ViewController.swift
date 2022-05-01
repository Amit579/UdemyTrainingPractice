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
    
    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//MARK:-Change Button Action
    @IBAction func changeButton(_ sender: UIButton) {
        changeNameLbel.text = "Hey Hi Amit"
        print("Yes you switch the branch")
    }
}

