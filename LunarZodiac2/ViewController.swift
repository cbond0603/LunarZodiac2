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

    @IBAction func buttonPressed(_ sender: UIButton) {
        //Left
        currentYear += sender.tag
        currentImageNumber += sender.tag
        
        if currentImageNumber < 0 {
            currentImageNumber = 11
        } else if currentImageNumber > 11 {
            currentImageNumber = 0
        }
        yearLabel.text = "\(currentYear)"
        animalImageView.image = UIImage(named: "image\(currentImageNumber)")
        
    }
    
}

