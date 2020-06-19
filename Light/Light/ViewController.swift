//
//  ViewController.swift
//  Light
//
//  Created by user169300 on 6/18/20.
//  Copyright © 2020 user169300. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }


    @IBAction func buttonPressed(_ sender: Any) {
        updateUI()
    }
    
    func updateUI() {
        lightOn.toggle()
        view.backgroundColor = lightOn ? .white : .black
    }
}

