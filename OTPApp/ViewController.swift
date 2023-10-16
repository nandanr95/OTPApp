//
//  ViewController.swift
//  OTPApp
//
//  Created by Nandan R on 29/09/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("View did load")
        // Do any additional setup after loading the view.
    }


    @IBAction func continueClick(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "mobilevc")
        
        show(vc!, sender: self)
    }
}

