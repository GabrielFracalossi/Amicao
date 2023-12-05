//
//  ViewController.swift
//  Amicao
//
//  Created by Jeferson Nazario on 04/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonPressed(_ sender: Any) {
    }
    
    @IBOutlet weak var buttonStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
    }
    
    func configureLayout() {
        buttonStart.layer.cornerRadius = 26.0
    }


}

