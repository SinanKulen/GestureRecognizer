//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Sinan Kulen on 16.05.2021.
//

import UIKit

class ViewController: UIViewController {
    var ikion = true
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        let    gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changepic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }

    @objc func changepic() {
    
        if ikion == true {
        imageView.image = UIImage(named: "ikiyeon")
        myLabel.text = "ikiyeon"
        ikion = false
    }
        else {
        imageView.image = UIImage(named: "ikiyeon2")
        myLabel.text = "ikiyeon2"
        ikion = true
    }
    
}

}
