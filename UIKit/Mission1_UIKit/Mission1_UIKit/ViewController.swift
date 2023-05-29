//
//  ViewController.swift
//  Mission1_UIKit
//
//  Created by seunghoria on 2023/05/29.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var navigationLabel: UILabel!
    @IBOutlet weak var navigationButton: UIButton!
    
    
    @IBOutlet weak var cardMain: UIView!
    @IBOutlet weak var cardTitle: UILabel!
    @IBOutlet weak var cardWhiteBox: UIView!
    @IBOutlet weak var certificationButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardMain.layer.cornerRadius = 16
        cardMain.layer.shadowColor = UIColor.black.cgColor  // 그림자의 색상
        cardMain.layer.shadowOffset = CGSize(width: 1, height: 1)  // 그림자의 위치(offset)
        cardMain.layer.shadowOpacity = 0.12  // 그림자의 투명도
        cardMain.layer.shadowRadius = 12  // 그림자의 반지름 크기
        
        
        cardWhiteBox.layer.cornerRadius = 16
        
        certificationButton.layer.cornerRadius = 12
    }
    
    
    
    @IBAction func certificationButtonPressed(_ sender: UIButton) {
        
        navigationLabel.text = "코로나19 예방접종 내역"
        navigationButton.backgroundColor = #colorLiteral(red: 0.1215686275, green: 0.3529411765, blue: 1, alpha: 1)
        
        cardMain.backgroundColor = #colorLiteral(red: 0.09803921569, green: 0.2862745098, blue: 0.7019607843, alpha: 1)
        cardTitle.text = "코로나19 예방접종 증명서"
        
        certificationButton.layer.isHidden = true
    
        
    }
    
    
    
    
}
