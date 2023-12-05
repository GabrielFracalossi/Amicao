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
    
    baseView.setup()
    
//    baseView.setup(title: "Esse aplicativo é muito legalzinho, você num acha?")
  }
  
  override func loadView() {
    view = baseView
  }
  
}
