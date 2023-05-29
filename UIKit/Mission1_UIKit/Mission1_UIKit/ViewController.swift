//
//  ViewController.swift
//  Mission1_UIKit
//
//  Created by seunghoria on 2023/05/29.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var navigationLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func certificationButtonPressed(_ sender: UIButton) {
        
        navigationLabel.text = "코로나19 예방접종 내역"
        
    }
    
    
    
    
}
