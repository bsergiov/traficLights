//
//  ViewController.swift
//  traficLights
//
//  Created by Сергей Бровко on 07.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var changeButton: UIButton!
    
    //MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.1
        orangeView.alpha = 0.1
        greenView.alpha = 0.1
        
        redView.layer.cornerRadius = 50
        orangeView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        
    }
    
    //MARK: - IB Actions
    @IBAction func changedCollor() {
        
        if changeButton.titleLabel?.text == "START"{
            redView.alpha = 1
            changeButton.setTitle("NEXT", for: .normal)
            return
        }
        
        if redView.alpha == 1 {
            redView.alpha = 0.2
            orangeView.alpha = 1
            return
        } else if orangeView.alpha == 1{
            orangeView.alpha = 0.2
            greenView.alpha = 1
            return
        } else if greenView.alpha == 1 {
            greenView.alpha = 0.2
            redView.alpha = 1
            return
        }
    }
    
}

