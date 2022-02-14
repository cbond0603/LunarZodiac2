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
    
    var animalNames = ["RAT", "OX", "TIGER", "RABBIT", "DRAGON", "SNAKE", "HORSE", "GOAT", "MONKEY", "ROOSTER", "DOG", "PIG"]
    
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var animalImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yearLabel.text = "\(currentYear)"
        animalImageView.image = UIImage(named: animalNames[currentImageNumber])
        animalNameLabel.text = "\(animalNames[currentImageNumber])"
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
//        currentYear += sender.tag
//        currentImageNumber += sender.tag
//
//        if currentImageNumber < 0 {
//            currentImageNumber = 11
//        } else if currentImageNumber > 11 {
//            currentImageNumber = 0
//        }
//        yearLabel.text = "\(currentYear)"
//        animalImageView.image = UIImage(named: "image\(currentImageNumber)")
        
        currentYear += sender.tag
        currentImageNumber += sender.tag

        if currentImageNumber < 0 {
            currentImageNumber = 11
        } else if currentImageNumber > 11 {
            currentImageNumber = 0
        }
        yearLabel.text = "\(currentYear)"
        animalImageView.image = UIImage(named: animalNames[currentImageNumber])
        animalNameLabel.text = "\(animalNames[currentImageNumber])"

        
        

    }
    
}

