//
//  ViewController.swift
//  Week4-Lecture
//
//  Created by Salyards, Adey on 4/22/16.
//  Copyright © 2016 Salyards, Adey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    var redView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView = UIView()
        redView.backgroundColor = UIColor.redColor()
        redView.frame = CGRect(x: 10, y: 10, width: 60, height: 60)
        containerView.addSubview(redView)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func hideRedView() {
        redView.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

