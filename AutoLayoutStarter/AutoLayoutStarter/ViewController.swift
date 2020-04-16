//
//  ViewController.swift
//  AutoLayoutStarter
//
//  Created by Derrick Park on 2019-04-17.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  let mainView: UIView = {
    let main = UIView()
    // important when setting contraints programmatically
    main.translatesAutoresizingMaskIntoConstraints = false
    main.backgroundColor = .green
    return main
  }()
    
    let purpleBox: UIView = {
        let purpleBox = UIView(frame: CGRect.zero)
        purpleBox.translatesAutoresizingMaskIntoConstraints = false
        purpleBox.backgroundColor = .purple
        return purpleBox
    }()
    
    let redBox: UIView = {
        let redBox = UIView(frame: CGRect.zero)
        redBox.translatesAutoresizingMaskIntoConstraints = false
        redBox.backgroundColor = .red
        return redBox
    }()
    
    let subOrangeBox1: UIView = {
        let subOrangeBox1 = UIView(frame: CGRect.zero)
        subOrangeBox1.translatesAutoresizingMaskIntoConstraints = false
        subOrangeBox1.backgroundColor = .orange
        return subOrangeBox1
    }()
    
    let subOrangeBox2: UIView = {
        let subOrangeBox2 = UIView(frame: CGRect.zero)
        subOrangeBox2.translatesAutoresizingMaskIntoConstraints = false
        subOrangeBox2.backgroundColor = .orange
        return subOrangeBox2
    }()
    
    let viewStack: UIStackView = {
        let viewStack = UIStackView()
        viewStack.axis = .vertical
        viewStack.distribution = .equalSpacing
//        viewStack.spacing = 100
        viewStack.translatesAutoresizingMaskIntoConstraints = false
        
        for _ in 0..<3 {
            let blueBox = UIView(frame: CGRect.zero)
            blueBox.backgroundColor = .blue
            blueBox.translatesAutoresizingMaskIntoConstraints = false
            viewStack.addArrangedSubview(blueBox)
            NSLayoutConstraint.activate([
                blueBox.widthAnchor.constraint(equalToConstant: 50),
                blueBox.heightAnchor.constraint(equalToConstant: 50)
                ])
        }
        
        return viewStack
    }()

  let squareButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Square", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(squareTapped), for: .touchUpInside)
    return butt
  }()
  
  let portraitButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Portrait", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(portraitTapped), for: .touchUpInside)
    return butt
  }()
  
  let landScapeButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Landscape", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(landscapeTapped), for: .touchUpInside)
    return butt
  }()
  
  var widthAnchor: NSLayoutConstraint?
  var heightAnchor: NSLayoutConstraint?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    view.addSubview(mainView)
    setupLayout()
  }

  fileprivate func setupLayout() {
    mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    widthAnchor = mainView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7, constant: 0)
    widthAnchor?.isActive = true
    
    // Add purple box
    mainView.addSubview(purpleBox)
    NSLayoutConstraint.activate([
        purpleBox.heightAnchor.constraint(equalToConstant: 50),
        purpleBox.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.6),
        purpleBox.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -20),
        purpleBox.trailingAnchor.constraint(equalTo: mainView.trailingAnchor,
            constant: -20)
    ])

    // Add red box
    mainView.addSubview(redBox)
    NSLayoutConstraint.activate([
        redBox.heightAnchor.constraint(equalToConstant: 70),
        redBox.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.4),
        redBox.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
        redBox.trailingAnchor.constraint(equalTo: mainView.trailingAnchor,
            constant: -20)
    ])
    // Add sub orange box
    redBox.addSubview(subOrangeBox1)
    NSLayoutConstraint.activate([
        subOrangeBox1.heightAnchor.constraint(equalToConstant: 50),
        subOrangeBox1.widthAnchor.constraint(equalTo: redBox.widthAnchor, multiplier: 0.3),
        subOrangeBox1.topAnchor.constraint(equalTo: redBox.topAnchor, constant: 10),
        subOrangeBox1.trailingAnchor.constraint(equalTo: redBox.trailingAnchor,
            constant: -15)
    ])
    redBox.addSubview(subOrangeBox2)
    NSLayoutConstraint.activate([
        subOrangeBox2.heightAnchor.constraint(equalToConstant: 50),
        subOrangeBox2.widthAnchor.constraint(equalTo: redBox.widthAnchor, multiplier: 0.5),
        subOrangeBox2.topAnchor.constraint(equalTo: redBox.topAnchor, constant: 10),
        subOrangeBox2.leadingAnchor.constraint(equalTo: redBox.leadingAnchor,
            constant: 15)
    ])
    // Add blue box
    mainView.addSubview(viewStack)
    NSLayoutConstraint.activate([
        viewStack.widthAnchor.constraint(equalToConstant: 50),
        viewStack.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.7),
        viewStack.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
        viewStack.centerYAnchor.constraint(equalTo: mainView.centerYAnchor)
        
    ])
    

    heightAnchor = mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7, constant: 0)
    heightAnchor?.isActive = true
    
    let buttStackView = UIStackView(arrangedSubviews: [
      squareButton, portraitButton, landScapeButton])
    buttStackView.translatesAutoresizingMaskIntoConstraints = false
    buttStackView.axis = .horizontal
    buttStackView.alignment = .center
    buttStackView.distribution = .fillEqually
    
    view.addSubview(buttStackView)
    NSLayoutConstraint.activate([
      buttStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
      buttStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      buttStackView.heightAnchor.constraint(equalToConstant: 50),
      buttStackView.widthAnchor.constraint(equalTo: view.widthAnchor)
      ])
  }

  @objc private func squareTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
  
  @objc private func portraitTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.7)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.7)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
    
  }
  
  @objc private func landscapeTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
}

