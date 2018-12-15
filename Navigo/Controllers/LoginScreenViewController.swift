//
//  SplashScreenViewController.swift
//  Navigo
//
//  Created by Cahyanto Setya Budi on 12/8/18.
//  Copyright © 2018 Cahyanto Setya Budi. All rights reserved.
//

import UIKit

class LoginScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func tabBarTapped(_ sender: CustomSegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            performSegue(withIdentifier: "Login", sender: self)
        case 1:
            performSegue(withIdentifier: "SignUp", sender: self)
        default:
            break
        }
    }
}
