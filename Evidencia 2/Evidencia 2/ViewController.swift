//
//  ViewController.swift
//  Evidencia 2
//
//  Created by user172369 on 4/10/21.
//  Copyright © 2021 user172369. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    //Inclusion de la animacion en el boton
    @IBAction func Animacion(_ sender: AnyObject) {
        let theButton = sender as! UIButton
        
        let bounds = theButton.bounds
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: .curveEaseInOut, animations: {
            theButton.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 20, height: bounds.size.height)
        }) { (success:Bool) in
            if success {
                theButton.bounds = bounds
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

