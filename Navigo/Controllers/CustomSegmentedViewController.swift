//
//  CustomSegmentedViewController.swift
//  Navigo
//
//  Created by Cahyanto Setya Budi on 12/15/18.
//  Copyright © 2018 Cahyanto Setya Budi. All rights reserved.
//

import UIKit

class CustomSegmentedViewController: UIViewController {

    @IBOutlet weak var customSegmentedControl: CustomSegmentedControl!
    @IBOutlet weak var loginContainer: UIView!
    @IBOutlet weak var signUpContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loginContainer.alpha = 1
        self.signUpContainer.alpha = 0
        print(customSegmentedControl.selectedSegmentIndex)
    }
    
    @IBAction func tabBarTapped(_ sender: CustomSegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            UIView.animate(withDuration: 0.3, animations: {
                self.loginContainer.alpha = 1
                self.signUpContainer.alpha = 0
            })
        case 1:
            UIView.animate(withDuration: 0.3, animations: {
                self.loginContainer.alpha = 0
                self.signUpContainer.alpha = 1
            })
        default:
            break
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
