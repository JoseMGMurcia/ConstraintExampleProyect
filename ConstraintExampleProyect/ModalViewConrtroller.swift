//
//  ModalViewControler.swift
//  ConstraintExampleProyect
//
//  Created by Jose Martinez Garcia on 06/05/2020.
//  Copyright © 2020 Everis. All rights reserved.
//

import Foundation
import UIKit



class ModalViewController : UIViewController  {
    
    var scrollableView = UIScrollView()
    var constraints = [NSLayoutConstraint]()
    var viewToShow : UIView
    
    init(_ viewtoWrap: UIView) {
        viewToShow = viewtoWrap
        super.init(nibName: nil, bundle: nil)
    }
   
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        view.isOpaque = false
        
        view.addSubview(scrollableView)
        scrollableView.addSubview(viewToShow)
        scrollableView.layer.cornerRadius = 7
        
          
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
       
        var height: CGFloat = 0
        
        for uiView in viewToShow.subviews.first!.subviews {
            height += uiView.bounds.height
        }
        
        print("Total height of the view: \(height)")
        
        var minY : CGFloat = (UIScreen.main.bounds.height-height) / 2
        if minY < 0 { minY = 0}
        
        scrollableView.frame = CGRect(x: 0, y: minY, width: UIScreen.main.bounds.width, height: height)
        
        print("View size: \(viewToShow.bounds.height) x \(viewToShow.bounds.width)")
        print("Background dimensions: \(view.bounds.height) x \(view.bounds.width)")
        
    }
    
    
    
}
