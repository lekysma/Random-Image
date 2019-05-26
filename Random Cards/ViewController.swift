//
//  ViewController.swift
//  Random Cards
//
//  Created by Jean martin Kyssama on 26/05/2019.
//  Copyright © 2019 Jean martin Kyssama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageDisplay: UIImageView!
    
    //MARK: On cree un tableau qui comprend les noms des differentes images que l'on va afficher
    let tableauImage = ["uno", "dos", "tres", "cuatro", "cinco", "seis", "siete", "ocho", "nueve", "diez", "once", "doce", "trece", "catorce", "quince", "diez y seis"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // on appelle la fonction dès que l'application charge
        afficheAleatoirementImage()
    }

    @IBAction func displayRandomImage(_ sender: UIButton) {
        // on appelle la fonction chaque fois que l'on appuie sur le bouton
        afficheAleatoirementImage()
    }
    
    //MARK: On cree une fonction qui va afficher aleatoirement une image
    func afficheAleatoirementImage() {
        // on ajoute une animation
        UIView.animate(withDuration: 0.1) {
            // on cree une variable aleatoire
            let valeurAleatoire = Int(arc4random_uniform(UInt32(self.tableauImage.count)))
            
            // ensuite on utilise cette valeur pour changer l'image aleatoirement
            self.imageDisplay.image = UIImage(named: self.tableauImage[valeurAleatoire])
            
            // verification
            print("\(valeurAleatoire) affichée avec succès !")
        }
    }
    
    //MARK: On ajoute une fonction secouer le telephone pour changer l'image egalement
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        afficheAleatoirementImage()
    }
    
    
}

