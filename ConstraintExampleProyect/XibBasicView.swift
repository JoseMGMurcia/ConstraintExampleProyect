//
//  XibBasicView.swift
//  ConstraintExampleProyect
//
//  Created by Jose Martinez Garcia on 11/05/2020.
//  Copyright © 2020 Everis. All rights reserved.
//

import Foundation
import UIKit

class XibBasicView: UIView {
  
    
    @IBOutlet weak var mainView: UIView!
  
    @IBOutlet weak var label: UILabel!
    
    override init(frame: CGRect){
        super.init(frame: frame)
        self.commonInit()
        
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        self.commonInit()
    }
  
    private func commonInit(){
        Bundle.main.loadNibNamed("ViewBasic", owner: self, options: nil)
        addSubview(mainView)
        mainView.addSubview(label)
        
        //label.text! += label.text! + label.text! + label.text! + label.text! + label.text!
        label.text! = "Su dispositivo ha sido vinculado correctamente."
        
        label.sizeToFit()
             
       
        mainView.frame = self.bounds
        mainView.backgroundColor = UIColor.blue
        mainView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
    }
    
}
