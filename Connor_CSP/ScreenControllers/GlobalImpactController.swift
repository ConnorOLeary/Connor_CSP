//
//  GlobalImpactController.swift
//  Connor_CSP
//
//  Created by Oleary, CONNOR on 11/10/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class GlobalImpactController: UIViewController{
    
    @IBOutlet weak var NeedToAdress: UILabel!
    @IBOutlet weak var PersonalConnection: UILabel!
    @IBOutlet weak var Sketch: UIImageView!
    
    private func setupImpact() -> Void
    {
        self.NeedToAdress.text = "Inequality in a working space is something that we should have moved on from long ago. Equal rights and pay should be enforced";
        
        self.PersonalConnection.text = "My mother is in the workforce and my sister is entering into it and I want the both of them to be treaten equally";
        
        Sketch.image = UIImage(named: "App thingy")
    }
    
    
    override public func viewDidLoad(){
        super.viewDidLoad()
        setupImpact()
    }
    override public func didReceiveMemoryWarning(){
        
    }
}
