//
//  ViewController.swift
//  Radio_Button
//
//  Created by Son on 10/11/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var done: UIBarButtonItem!
    @IBOutlet weak var Gender: UILabel!
    @IBOutlet weak var male: UIButton!
    @IBOutlet weak var female: UIButton!
    @IBOutlet weak var other: UIButton!

    @IBOutlet var buttons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        done.isEnabled = false
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func btnClicked(_ sender: UIButton) {
        buttons.forEach { (thisButton) in
            thisButton.isSelected = false
        }
//        for btnClick in buttons {
//            btnClick.isSelected = false
//        }
        sender.isSelected = true
        if sender.isSelected {
            done.isEnabled = true
        }
        
        UserDefaults.standard.set(sender.title(for: .selected), forKey: "Gender")
    }
    
}


