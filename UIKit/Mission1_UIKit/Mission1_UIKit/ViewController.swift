//
//  ViewController.swift
//  Mission1_UIKit
//
//  Created by seunghoria on 2023/05/29.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var navigationLabel: UILabel!
    
    @IBOutlet weak var cardMain: UIView!
    
    @IBOutlet weak var cardTitle: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func certificationButtonPressed(_ sender: UIButton) {
        
        navigationLabel.text = "코로나19 예방접종 내역"
        
        cardMain.backgroundColor = #colorLiteral(red: 0.09803921569, green: 0.2862745098, blue: 0.7019607843, alpha: 1)
        
        cardTitle.text = "코로나19 예방접종 증명서"
    
        
    }
    
    
    
    
}
