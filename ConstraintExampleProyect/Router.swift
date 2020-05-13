//
//  Router.swift
//  ConstraintExampleProyect
//
//  Created by Jose Martinez Garcia on 06/05/2020.
//  Copyright © 2020 Everis. All rights reserved.
//

import Foundation
import UIKit

enum Navigation {
    case main
    case popUp
}

class Router{
    
    var presenter = Presenter()
    
    func navigate (to navigationDestiny: Navigation)-> UIView?{
        
        switch  navigationDestiny {
            case .main:
                print("Router navigating to main View")
            case .popUp:
                print("Router navigating to popUpView")
        }
        
        
        return nil
        
    }
    
}
