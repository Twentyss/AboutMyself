//
//  MoreInfoViewController.swift
//  AboutMyself
//
//  Created by Илья Першин on 26.10.2020.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    let author = Author()
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = author.firstname + " " + author.surname
        imageView.image = UIImage(named: "myPhoto")
    }

}
