//
//  LoginViewController.swift
//  Amicao
//
//  Created by Jeferson Nazario on 04/12/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var buttonEnter: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
        navigationItem.hidesBackButton = true
    }
    
    func configureLayout() {
        buttonEnter.layer.cornerRadius = 26.0
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
