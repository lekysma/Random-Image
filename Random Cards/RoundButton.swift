//
//  RoundButton.swift
//  Random Cards
//
//  Created by Jean martin Kyssama on 26/05/2019.
//  Copyright © 2019 Jean martin Kyssama. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
    // se charge de definir la rondeur du bouton / des marges
    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    // ensuite on code la largeur de la marge du bouton
    @IBInspectable var largeurCoin : CGFloat = 0 {
        didSet {
            self.layer.borderWidth = largeurCoin
        }
    }
    
    // enfin on code la couleur du bouton
    @IBInspectable var couleurBouton : UIColor = UIColor.black {
        didSet {
            self.layer.borderColor = couleurBouton.cgColor
        }
    }
}
