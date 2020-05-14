//
//  ViewController.swift
//  ConstraintExampleProyect
//
//  Created by Jose Martinez Garcia on 27/04/2020.
//  Copyright © 2020 Everis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var whiteAreaView = UIScrollView()
   
    var titleView = UIView()
    var warningView = UIView()
    var buttonsView = UIView()
    
    var warningTextLabel = UILabel()
    
    var warningInfoLabel = UILabel()
    var warningQuestionLabel = UILabel()
    var warningChangesLabel = UILabel()
    
    var closerButton = UIButton()
    var warningSing = UIImageView()
    
    var oKButton = UIButton()
    var cancelButton = UIButton()
    
    var labels = [UILabel]()

    let cornerRadius : CGFloat = 10.0
      
    var constraints = [NSLayoutConstraint]()
    var firstCharge = true
    let infoImage: UIImage?  = UIImage(named: "info@2x.png")
    let closeImage: UIImage?  = UIImage(named: "ico_cerrar_2@3x.png")
    
    let darkBlue : UIColor = UIColor(red: 0.05, green: 0.045, blue: 0.4, alpha: 1)
    let lightBlue : UIColor = UIColor(red: 0.005, green: 0.8, blue: 0.9, alpha: 1)
         
         
    let texts = ["Hey! Hemos detectado que te has conectado desde un dispositivo nuevo",  "Por tu seguridad, a partir de ahora vamos a asociar este dispositivo como seguro para garantizar cualquier acción que lleves a cabo con tus tarjetas desde tu app de WiZink y así minimizar los riesgos de acciones fraudulentas.", "¿Deseas asociar este dispositivo como dispositivo seguro?", "Este proceso desvinculará automáticamente tu dispositivo anterior y todas las autenticaciones llegarán al nuevo dispositivo seguroEste proceso desvinculará automáticamente tu dispositivo anterior y todas las autenticaciones llegarán al nuevo dispositivo seguroEste proceso desvinculará automáticamente tu dispositivo anterior y todas las autenticaciones llegarán al nuevo dispositivo seguroEste proceso desvinculará automáticamente tu dispositivo anterior y todas las autenticaciones llegarán al nuevo dispositivo seguroEste proceso desvinculará automáticamente tu dispositivo anterior y todas las autenticaciones llegarán al nuevo dispositivo seguroEste proceso desvinculará automáticamente tu dispositivo anterior y todas las autenticaciones llegarán al nuevo dispositivo seguroEste proceso desvinculará automáticamente tu dispositivo anterior y todas las autenticaciones llegarán al nuevo dispositivo seguroEste proceso desvinculará automáticamente tu dispositivo anterior y todas las autenticaciones llegarán al nuevo dispositivo seguroEste proceso desvinculará automáticamente tu dispositivo anterior y todas las autenticaciones llegarán al nuevo dispositivo seguroEste proceso desvinculará automáticamente tu dispositivo anterior y todas las autenticaciones llegarán al nuevo dispositivo seguro.", "Ahora no", "Asociar"]
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = UIColor.lightGray
        
        whiteAreaView.layer.cornerRadius = cornerRadius
        whiteAreaView.backgroundColor = UIColor.white
              
        view.addSubview(whiteAreaView)
        
        whiteAreaView.frame = self.view.bounds
        
        
       
        /*         // Test block
        titleView.backgroundColor = UIColor.darkGray
        warningTextLabel.backgroundColor = UIColor.lightGray
        warningInfoLabel.backgroundColor = UIColor.lightGray
        warningQuestionLabel.backgroundColor = UIColor.lightGray
        buttonsView.backgroundColor = UIColor.lightGray
        warningChangesLabel.backgroundColor = UIColor.lightGray
        closerButton.backgroundColor = UIColor.darkGray
        */
        
        oKButton.backgroundColor = UIColor.darkGray
        warningChangesLabel.textColor = UIColor.darkGray
        warningView.backgroundColor = UIColor.lightGray.withAlphaComponent(0.075)
        cancelButton.backgroundColor = UIColor.white
        cancelButton.setTitleColor(darkBlue, for: .normal)
        oKButton.backgroundColor = darkBlue
        oKButton.setTitleColor(lightBlue, for: .normal)
        cancelButton.layer.borderColor = darkBlue.cgColor
        cancelButton.layer.borderWidth = 1
        
        
        if let image = closeImage {
            closerButton.setImage(image, for: .normal)
        }
        if let image = infoImage {
            warningSing.image = image
        }
        
        whiteAreaView.addSubview(titleView)
        titleView.addSubview(closerButton)
        titleView.addSubview(warningTextLabel)
        whiteAreaView.addSubview(warningInfoLabel)
        whiteAreaView.addSubview(warningQuestionLabel)
        whiteAreaView.addSubview(warningView)
        whiteAreaView.addSubview(buttonsView)
        whiteAreaView.addSubview(warningChangesLabel)
        warningView.addSubview(warningSing)
        buttonsView.addSubview(cancelButton)
        buttonsView.addSubview(oKButton)
        
        titleView.layer.cornerRadius = cornerRadius
        warningTextLabel.layer.cornerRadius = cornerRadius
        buttonsView.layer.cornerRadius = cornerRadius
        warningView.layer.cornerRadius = cornerRadius / 2
         
        labels.append(contentsOf: [warningTextLabel, warningInfoLabel, warningQuestionLabel, warningChangesLabel])
        oKButton.addTarget(self, action: #selector(okButtonPressed(_:)), for: .touchUpInside)
     
    }
    
    func aplyTexts(){
        warningTextLabel.numberOfLines = 0
        warningTextLabel.lineBreakMode = .byWordWrapping
        warningTextLabel.text = texts[0]
        warningTextLabel.font = UIFont.boldSystemFont(ofSize: 20)
        warningTextLabel.sizeToFit()
        
        warningInfoLabel.numberOfLines = 0
        warningInfoLabel.lineBreakMode = .byWordWrapping
        warningInfoLabel.font = UIFont.systemFont(ofSize: 18)
        warningInfoLabel.text = texts[1]
        warningInfoLabel.sizeToFit()
        
        warningQuestionLabel.numberOfLines = 0
        warningQuestionLabel.lineBreakMode = .byWordWrapping
        warningQuestionLabel.text = texts[2]
        warningQuestionLabel.font = UIFont.boldSystemFont(ofSize: 20)
        warningQuestionLabel.sizeToFit()
        
        warningChangesLabel.numberOfLines = 0
        warningChangesLabel.lineBreakMode = .byWordWrapping
        warningChangesLabel.text = texts[3]
        warningChangesLabel.font = UIFont.italicSystemFont(ofSize: 18)
        warningChangesLabel.sizeToFit()
        
        cancelButton.setTitle(texts[4].uppercased(), for: .normal)
        oKButton.setTitle(texts[5].uppercased(), for: .normal)
        
        cancelButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        oKButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        self.view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        whiteAreaView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        titleView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        warningView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        buttonsView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        self.ajustViews(toHeight: view.bounds.height, toWidth: view.bounds.width )
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if (firstCharge){
            firstCharge = false
            self.ajustViews(toHeight: view.bounds.height, toWidth: view.bounds.width )
        }

        
    }
    
    func ajustViews(toHeight: CGFloat, toWidth: CGFloat){
        
        print ("SCA Warning screen loaded, height: \(toHeight), width \(toWidth)")
        
        whiteAreaView.translatesAutoresizingMaskIntoConstraints = false
        titleView.translatesAutoresizingMaskIntoConstraints = false
        closerButton.translatesAutoresizingMaskIntoConstraints = false
        warningTextLabel.translatesAutoresizingMaskIntoConstraints = false
        warningInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        warningQuestionLabel.translatesAutoresizingMaskIntoConstraints = false
        warningView.translatesAutoresizingMaskIntoConstraints = false
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        warningChangesLabel.translatesAutoresizingMaskIntoConstraints = false
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        oKButton.translatesAutoresizingMaskIntoConstraints = false
        warningSing.translatesAutoresizingMaskIntoConstraints = false
        
        var heightSpace : CGFloat
        var clearSpace : CGFloat = toWidth / 24
        var height : CGFloat = 0
        
        self.aplyTexts()
      
        let buttonsWidth, buttonsHeight, iconSide : CGFloat
        if (toHeight / 24 < clearSpace){
            buttonsWidth = toWidth / 4
            buttonsHeight = toHeight / 12
            clearSpace = toHeight / 24
            iconSide = clearSpace * 1.5
        }else{
            buttonsWidth = toWidth / 2.5
            buttonsHeight = toHeight / 15
            iconSide = clearSpace * 2
        }
                
        let size : CGFloat = iconSide * 0.8
        closerButton.imageEdgeInsets = UIEdgeInsets(top: size , left: size, bottom: size , right: size )
        
        NSLayoutConstraint.deactivate(constraints)
        constraints.removeAll()
         
        let whiteAreaLC : NSLayoutConstraint
        if ( toHeight < toWidth ){
            whiteAreaLC = whiteAreaView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor)
        }else {
            whiteAreaLC = whiteAreaView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: clearSpace)
            
        }
        let whiteAreaTlC = whiteAreaView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -clearSpace)
  
        constraints.append(contentsOf: [whiteAreaLC, whiteAreaTlC ])
        
        let titleViewTC = titleView.topAnchor.constraint(equalTo: whiteAreaView.topAnchor)
        let titleViewTlC = titleView.trailingAnchor.constraint(equalTo: whiteAreaView.trailingAnchor)
        let titleViewLC = titleView.leadingAnchor.constraint(equalTo: whiteAreaView.leadingAnchor)
        let titleViewHC = titleView.heightAnchor.constraint(equalToConstant: warningTextLabel.bounds.height + clearSpace * 2)
        
        constraints.append(contentsOf: [titleViewTC, titleViewTlC, titleViewLC, titleViewHC])
        
        let warningTextLabelTC = warningTextLabel.topAnchor.constraint(equalTo: titleView.safeAreaLayoutGuide.topAnchor, constant: clearSpace)
        let warningTextLabelTlC = warningTextLabel.trailingAnchor.constraint(equalTo: whiteAreaView.safeAreaLayoutGuide.trailingAnchor ,constant: -(iconSide + clearSpace))
        let warningTextLabelLC = warningTextLabel.leadingAnchor.constraint(equalTo: titleView.safeAreaLayoutGuide.leadingAnchor, constant: clearSpace)

        constraints.append(contentsOf: [warningTextLabelTC, warningTextLabelTlC, warningTextLabelLC])
        
        let closerButtonTC = closerButton.topAnchor.constraint(equalTo: titleView.safeAreaLayoutGuide.topAnchor, constant: clearSpace)
        
        let closerButtonLC = closerButton.leadingAnchor.constraint(equalTo: warningTextLabel.trailingAnchor)
        let closerButtonWC = closerButton.widthAnchor.constraint(equalToConstant: iconSide)
        let closerButtonHC = closerButton.heightAnchor.constraint(equalToConstant: iconSide )
        
        constraints.append(contentsOf: [closerButtonTC, closerButtonLC, closerButtonWC, closerButtonHC])
      
        
        let warningInfoLabelTC = warningInfoLabel.topAnchor.constraint(equalTo: warningTextLabel.safeAreaLayoutGuide.bottomAnchor, constant: clearSpace * 2)
        let warningInfoLabelTlC = warningInfoLabel.trailingAnchor.constraint(equalTo: whiteAreaView.safeAreaLayoutGuide.trailingAnchor ,constant: -clearSpace)
        let warningInfoLabelLC = warningInfoLabel.leadingAnchor.constraint(equalTo: whiteAreaView.safeAreaLayoutGuide.leadingAnchor, constant: clearSpace)
        
        constraints.append(contentsOf: [warningInfoLabelTC, warningInfoLabelTlC, warningInfoLabelLC])
        
        let warningQuestionLabelTC = warningQuestionLabel.topAnchor.constraint(equalTo: warningInfoLabel.safeAreaLayoutGuide.bottomAnchor, constant: clearSpace)
        let warningQuestionLabelTlC = warningQuestionLabel.trailingAnchor.constraint(equalTo: whiteAreaView.safeAreaLayoutGuide.trailingAnchor ,constant: -clearSpace)
        let warningQuestionLabelLC = warningQuestionLabel.leadingAnchor.constraint(equalTo: whiteAreaView.safeAreaLayoutGuide.leadingAnchor, constant: clearSpace)
        
        constraints.append(contentsOf: [warningQuestionLabelTC, warningQuestionLabelTlC, warningQuestionLabelLC])
        
        let warningViewTC = warningView.topAnchor.constraint(equalTo: warningQuestionLabel.safeAreaLayoutGuide.bottomAnchor)
        let warningViewTlC = warningView.trailingAnchor.constraint(equalTo: whiteAreaView.safeAreaLayoutGuide.trailingAnchor, constant: -clearSpace / 2)
        let warningViewLC = warningView.leadingAnchor.constraint(equalTo: whiteAreaView.safeAreaLayoutGuide.leadingAnchor, constant: clearSpace / 2 )
        
        constraints.append(contentsOf: [warningViewTC, warningViewTlC, warningViewLC])
        
        let warningChangesLabelTC = warningChangesLabel.topAnchor.constraint(equalTo: warningView.safeAreaLayoutGuide.topAnchor, constant: clearSpace / 8)
        let warningChangesLabelTlC = warningChangesLabel.trailingAnchor.constraint(equalTo: warningView.safeAreaLayoutGuide.trailingAnchor, constant: -clearSpace / 8 )
        let warningChangesLabelLC = warningChangesLabel.leadingAnchor.constraint(equalTo: warningView.safeAreaLayoutGuide.leadingAnchor, constant: iconSide + clearSpace)
        
        constraints.append(contentsOf: [warningChangesLabelTC, warningChangesLabelTlC, warningChangesLabelLC])
        
        let warningSingTC = warningSing.topAnchor.constraint(equalTo: warningView.safeAreaLayoutGuide.topAnchor, constant: clearSpace)
        let warningSingLC = warningSing.leadingAnchor.constraint(equalTo: warningView.safeAreaLayoutGuide.leadingAnchor, constant: clearSpace / 4)
        let warningSingHC = warningSing.heightAnchor.constraint(equalToConstant: iconSide)
        let warningSingWC = warningSing.widthAnchor.constraint(equalToConstant: iconSide)
        
        constraints.append(contentsOf: [warningSingTC, warningSingLC, warningSingHC, warningSingWC])
        
        let buttonsViewTC = buttonsView.topAnchor.constraint(equalTo: warningChangesLabel.safeAreaLayoutGuide.bottomAnchor, constant: clearSpace)
        let buttonsViewTlC = buttonsView.trailingAnchor.constraint(equalTo: whiteAreaView.safeAreaLayoutGuide.trailingAnchor)
        let buttonsViewLC = buttonsView.leadingAnchor.constraint(equalTo: whiteAreaView.safeAreaLayoutGuide.leadingAnchor)
        let buttonsViewHC = buttonsView.heightAnchor.constraint(equalToConstant: buttonsHeight + (clearSpace * 2))
        
        constraints.append(contentsOf: [buttonsViewTC, buttonsViewTlC, buttonsViewLC, buttonsViewHC])
        
        let cancelButtonTC = cancelButton.centerYAnchor.constraint(equalTo: buttonsView.centerYAnchor)
        let okbuttonTC = oKButton.centerYAnchor.constraint(equalTo: buttonsView.centerYAnchor)
        let cancelButtonWC = cancelButton.widthAnchor.constraint(equalToConstant: buttonsWidth)
        let okButtonWC = oKButton.widthAnchor.constraint(equalToConstant: buttonsWidth)
        let cancelButtonHeight = cancelButton.heightAnchor.constraint(equalToConstant: buttonsHeight )
        let okButtonHeight = oKButton.heightAnchor.constraint(equalToConstant: buttonsHeight )
        let cancelButtonTlC = cancelButton.trailingAnchor.constraint(equalTo: buttonsView.centerXAnchor, constant: -clearSpace / 2)
        let okButtonLC = oKButton.leadingAnchor.constraint(equalTo: buttonsView.centerXAnchor, constant: clearSpace / 2)
        
        constraints.append(contentsOf: [cancelButtonTC, okbuttonTC, cancelButtonWC, okButtonWC, cancelButtonHeight, okButtonHeight, cancelButtonTlC, okButtonLC])
       
        NSLayoutConstraint.activate(constraints)
        
        view.layoutIfNeeded()
        
        
        height = 0
        for label in labels{
            height += label.bounds.height
        }
        height += clearSpace * 7 + buttonsHeight
        heightSpace = (UIScreen.main.bounds.height - height) / 2
        
        var whiteAreaTC = whiteAreaView.topAnchor.constraint(equalTo: self.view.topAnchor , constant: heightSpace)
        var whiteAreaHC = whiteAreaView.heightAnchor.constraint(equalToConstant: height)

        if  height > view.bounds.height{
            print("white area must be scrollable")
            whiteAreaTC = whiteAreaView.topAnchor.constraint(equalTo: self.view.topAnchor)
            whiteAreaHC = whiteAreaView.heightAnchor.constraint(equalToConstant: view.bounds.height)
            whiteAreaView.contentSize = CGSize(width: whiteAreaView.bounds.width, height: height)
            
           
        }
        whiteAreaView.isScrollEnabled = true
        whiteAreaView.scrollsToTop = true
        
        
        NSLayoutConstraint.activate([whiteAreaTC, whiteAreaHC])
        constraints.append(contentsOf: [whiteAreaTC, whiteAreaHC])
        
    }
     
    @objc func okButtonPressed(_ sender: UIButton!) {
        print("Ok button pressed")
        
        let alertView = UIAlertController(title: "¿Esta seguro?", message: "Si acepta no podrá desaacer esta acción y el dispositivo quedará vinculado", preferredStyle: UIAlertController.Style.alert)
    
        alertView.addAction(UIAlertAction(title: "Cancel", style: .cancel , handler: { _ in
            //Cancel Action
        }))
        alertView.addAction(UIAlertAction(title: "Ok", style: .default, handler: {(_: UIAlertAction!) in
            
            print("Alert Ok button pressed")
            self.showModal()
          }))
        self.present(alertView, animated: true, completion: nil)
    }
    
    
    func showModal(){
        let modalViewController = ModalViewController(XibBasicView())
        
        modalViewController.modalPresentationStyle = .overCurrentContext
        present(modalViewController, animated: true, completion: nil)
    }
   
}


