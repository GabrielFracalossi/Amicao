//
//  WelcomeViewController.swift
//  Amicao
//
//  Created by Jeferson F Nazario on 05/12/23.
//

import UIKit

class WelcomeViewController: UIViewController {
  
  let baseView = WelcomeView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
//    baseView.setup()
    
    baseView.setup(logo: "cat-logo",
                   title: "Esse aplicativo é muito legalzinho, você num acha?",
                   subtitle: "Bora testar?",
                   buttonTitle: "Só se for agora")
  }
  
  override func loadView() {
    view = baseView
  }
  
}
