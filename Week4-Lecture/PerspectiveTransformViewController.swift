//
//  PerspectiveTransformViewController.swift
//  Week4-Lecture
//
//  Created by Salyards, Adey on 4/22/16.
//  Copyright © 2016 Salyards, Adey. All rights reserved.
//

import UIKit

class PerspectiveTransformViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    var rotation: CGFloat!
    var foreshortening: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rotation = 0
        foreshortening = 0

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didChangeRotation(sender: UISlider) {
        rotation = CGFloat(sender.value) * CGFloat(M_PI / 180)
        updateRotation()

    }
    
    
    @IBAction func didChangeForeshortening(sender: UISlider) {
        foreshortening = CGFloat(sender.value)
        updateRotation()
    }
    
    func updateRotation() {
        var transform = CATransform3DIdentity
        transform.m34 = 1 / foreshortening
        
        transform = CATransform3DRotate(transform, rotation, 0, 1, 0)
        
        image.layer.transform = transform
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
