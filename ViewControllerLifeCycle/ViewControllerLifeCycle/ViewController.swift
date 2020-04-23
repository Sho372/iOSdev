//
//  ViewController.swift
//  ViewControllerLifeCycle
//
//  Created by user169300 on 4/23/20.
//  Copyright © 2020 user169300. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad() // always let super call the lifecycle methods
        // Do any additional setup after loading the view.
        // When the view controller loads the &view&& into memory.u
        // do primary setup of your viewcontrolller .here.
        // todd time to update my view using my model, because my outlets are set
        
        // " Do not do geometry-related setup here! Your bounds are not yet set!
        
        // This methods gets called once when the views are loaded to th ememory
        // 1. Initialization of views
        // 2. Network requests
        // 3. Database access
        print(#function)
    }
    
    // For work that willl be performed mutiple times, your app can rely on these view event nofifications
    
    // This method willl be sent just before your ViewController appears or re-apppears on scressn.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // catch my view up to date with what went on while I was off-screnn
        
        // Note' this method can be called repeatedly vs. viewDidLoad is only called once
        // 1. Update user location.
        // 2. Updating or refreshing some views.
        // 3. Startgin a network requests
        // 4. adjust screen orientations. portrait, landscape
    }
    
    // This methid will be called just after your ViewController has finished appearing on screen.
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // start a timer or an animation or start oberving something.
        
        // This is also a good place ot start somthing expensive.
        // why kick off expensive things here instead of in viewDidLoad?
        // Because we know we&ew on screnn so it won&t be a waste.
        // By expensive we usually mean time consuming but could also mean bettery or storage.
        
        // We must never block our UI from user intraction thus backgound fetching, etc.
        // Our UI might need to come up incomplete and later fill in when expensive operaiton si done.
        // We use spinning wheels and such to let the user know we are fetching something expensive
        // 1. starg an animation
        // 2. long running code expesive
    }
    
    // Gets called right before the view disappers from the screnn.
    // Your viewcontroller is still on screen, but it s about to go off screen.
    // ex. when the user hit back in a UINavigationController
    //     the user switched to another tab in UITabBarController
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // often you just undo what you did in viewdidAppear
        // for example, stop a timer or animation you started in viewDidAppear or stop observing
        // 1. saving edits.
        // 2. hiding keyboards.
        // 3. canceling network requests or stopping on animation
    }
    
    // Gets called right after the view disappears from the screen.
    // usually after the user navigated to a new view
    // 1.
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // clean up this viewcontroller
        // 1. stop services related to the view. playing audio, removing noficaiton obervers
    }
    
    
    
    

}

