//
//  DetailViewController.swift
//  Radio_Button
//
//  Created by Son on 10/17/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import UIKit

enum GenderChoice: Int {
    case male = 1
    case female = 2
    case other = 3
}

class DetailViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let key = UserDefaults.standard.object(forKey: "Gender") as! String
        labelResult.text = key
//        switch key {
//        case GenderChoice.male.rawValue:
//            labelResult.text = "Male"
//        case GenderChoice.female.rawValue:
//            labelResult.text = "Female"
//        case GenderChoice.other.rawValue:
//            labelResult.text = "Other"
//        default:
//           print("Dont have Choice")
//        }
////        print(UserDefaults.standard.object(forKey: "Gender"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
