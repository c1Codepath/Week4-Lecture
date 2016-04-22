//
//  TabBarViewController.swift
//  Week4-Lecture
//
//  Created by Salyards, Adey on 4/22/16.
//  Copyright © 2016 Salyards, Adey. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIScrollView!
    var pinkViewController: UIViewController!
    var peachViewController: UIViewController!
    var yellowViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        containerView.contentSize = CGSize(width: view.frame.size.width * 3, height: view.frame.size.height)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        
        yellowViewController = storyboard.instantiateViewControllerWithIdentifier("YellowViewController")
        containerView.addSubview(yellowViewController.view)
        
        
        peachViewController = storyboard.instantiateViewControllerWithIdentifier("PeachViewController")
        peachViewController.view.frame.origin.x = containerView.frame.size.width
        containerView.addSubview(peachViewController.view)
        
        pinkViewController = storyboard.instantiateViewControllerWithIdentifier("PinkViewController")
        pinkViewController.view.frame.origin.x = containerView.frame.size.width * 2
        containerView.addSubview(pinkViewController.view)
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressYellowButton(sender: AnyObject) {
        
        containerView.setContentOffset(CGPoint(x: 0, y:0), animated: true)
    }
    
    @IBAction func didPressPeachButton(sender: AnyObject) {
        containerView.setContentOffset(CGPoint(x: view.frame.size.width, y: 0), animated: true)
        
    }
    
    @IBAction func didPressPinkButton(sender: AnyObject) {
        containerView.setContentOffset(CGPoint(x: view.frame.size.width * 2, y: 0), animated: true)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
