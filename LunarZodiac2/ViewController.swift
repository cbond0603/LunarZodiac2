//
//  ViewController.swift
//  LunarZodiac2
//
//  Created by Chris Bond on 2/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    var currentYear = 2020
    var currentImageNumber = 0
    
    @IBOutlet weak var yearLabel: UILabel!
    
    @IBOutlet weak var animalImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yearLabel.text = "\(currentYear)"
        animalImageView.image = UIImage(named: "image\(currentImageNumber)")
    }

    @IBAction func leftButtonPressed(_ sender: Any) {
        currentYear = currentYear - 1
        yearLabel.text = "\(currentYear)"
        currentImageNumber = currentImageNumber - 1
        
        if currentImageNumber == -1 {
            currentImageNumber = 11
        }
        animalImageView.image = UIImage(named: "image\(currentImageNumber)")
    }
    
    @IBAction func rightButtonPressed(_ sender: Any) {
        currentYear = currentYear + 1
        yearLabel.text = "\(currentYear)"
        
        currentImageNumber = currentImageNumber + 1
        if currentImageNumber == 12 {
            currentImageNumber = 0
        }
        animalImageView.image = UIImage(named: "image\(currentImageNumber)")
        
    }
}

