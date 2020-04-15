//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by user169300 on 4/15/20.
//  Copyright © 2020 user169300. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeTitle(_ sender: Any){
        mainLabel.text = "This app rocks!"
    }
}

