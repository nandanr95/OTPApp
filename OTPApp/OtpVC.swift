//
//  OtpVC.swift
//  OTPApp
//
//  Created by Nandan R on 29/09/23.
//

import UIKit

class OtpVC: UIViewController {
    
    var mobileNumber = ""

    @IBOutlet weak var thirdtitleL: UILabel!
    
    
    @IBOutlet weak var otpTf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        thirdtitleL.text = "Enter OTP sent to \(mobileNumber)"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func validOtpButton(_ sender: Any) {
        
        let otp = otpTf.text ?? ""
        if otp.count != 6{
            showAlert(msg: "Invalid OTP"){
                self.otpTf.text = ""
            }
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
