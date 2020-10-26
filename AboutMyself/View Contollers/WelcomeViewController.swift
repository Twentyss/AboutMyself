//
//  WelcomeViewController.swift
//  AboutMyself
//
//  Created by Илья Першин on 24.10.2020.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet weak var welcomeLabel: UILabel!
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Welcome, " + username
    }
    

}
