//
//  PopUpViewController.swift
//  ConstraintExampleProyect
//
//  Created by Jose Martinez Garcia on 06/05/2020.
//  Copyright © 2020 Everis. All rights reserved.
//

import Foundation
import UIKit

class PopUpViewContoller : UIViewController {
    
    let text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    var labels = [UILabel(), UILabel(), UILabel(), UILabel(), UILabel(), UILabel()]
    
    override func viewDidLoad() {
        
        
        for label in labels{
            self.view.addSubview(label)
            label.text = text
            
        }
        
        
        
    }
}
