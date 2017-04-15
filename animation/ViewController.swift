//
//  ViewController.swift
//  animation
//
//  Created by Cntt36 on 4/12/17.
//  Copyright © 2017 nhom5. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Button1Control: NSLayoutConstraint!
    @IBOutlet weak var Button2Control: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Button1Control.constant -= view.bounds.width
        Button2Control.constant -= view.bounds.width
    }
    var animationPerformedOnce = false
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        
        if !animationPerformedOnce{
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations:{
                self.Button1Control.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations:{
                self.Button2Control.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            animationPerformedOnce = true

        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
            }


}

