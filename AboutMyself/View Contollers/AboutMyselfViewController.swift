//
//  AboutMyselfViewController.swift
//  AboutMyself
//
//  Created by Илья Першин on 26.10.2020.
//

import UIKit

class AboutMyselfViewController: UIViewController {

    let user = User()
    let author = Author()
    @IBOutlet weak var aboutMyselfLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = user.username
        aboutMyselfLabel.text = author.aboutAuthor
    }
    
}
