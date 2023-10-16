//
//  MobileVC.swift
//  OTPApp
//
//  Created by Nandan R on 29/09/23.
//

import UIKit

class MobileVC: UIViewController {

    @IBOutlet weak var secondTitleL: UILabel!
    
    @IBOutlet weak var secondMobileTf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func otpButton(_ sender: Any) {
        
        let mobileNum = secondMobileTf.text ?? ""
        
        if mobileNum.count == 10{
            let vc = storyboard?.instantiateViewController(identifier: "otpvc") as! OtpVC
            
            vc.mobileNumber = mobileNum
            
            present(vc, animated: true)
            
            
        }
        else{
            print("invalid mobile number")
            showAlert(title: "Error", msg: "Enter valid number" )
            
        }
    }
    
    @IBAction func goBackClick(_ sender: Any) {
        
        showAlert(msg: "Do you want to skip mobile verification"){
            self.navigationController?.popViewController(animated: true)
        }
        
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
