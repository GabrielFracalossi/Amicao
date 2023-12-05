//
//  WelcomeView.swift
//  Amicao
//
//  Created by Jeferson F Nazario on 05/12/23.
//

import UIKit

class WelcomeView: UIView {
  
  // MARK: - Properties
  
  private lazy var amicaoLogo: UIImageView = {
    let image = UIImage(named: "placeholder")
    let imageView = UIImageView(image: image)
    imageView.contentMode = .scaleAspectFit
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  private lazy var titleLabel: UILabel = {
    let label = UILabel()
    label.textColor = .white
    label.font = .systemFont(ofSize: 32, weight: .bold)
    label.textAlignment = .left
    label.numberOfLines = 0
    label.lineBreakMode = .byWordWrapping
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private lazy var textField: UITextField = {
    let text = UITextField()
    text.placeholder = "Digite algo aqui"
    text.keyboardType = .emailAddress
    text.backgroundColor = .white
    text.layer.cornerRadius = 16
    text.delegate = self
    text.translatesAutoresizingMaskIntoConstraints = false
    return text
  }()
  
  private lazy var bottomLabel: UILabel = {
    let label = UILabel()
    label.textColor = .white
    label.font = .systemFont(ofSize: 20, weight: .semibold)
    label.textAlignment = .center
    label.numberOfLines = 0
    label.lineBreakMode = .byWordWrapping
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private lazy var startButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .black //UIColor(red: 255/255, green: 169/255, blue: 191/255, alpha: 1.0)
    button.setTitleColor(.white, for: .normal)
    button.layer.cornerRadius = 24.0
    button.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  var buttonToggle: Bool = false
  
  init() {
    super.init(frame: .zero)
    
    setupViews()
    setupConstraints()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setup(logo: String = "amicao-logo",
             title: String = "Seja\nbem-vindo ao\napp do AMICÃO",
             subtitle: String = "Faça um novo amigo!",
             buttonTitle: String = "Começar") {
    amicaoLogo.image = UIImage(named: logo)
    titleLabel.text = title
    bottomLabel.text = subtitle
    startButton.setTitle(buttonTitle, for: .normal)
  }
}

private extension WelcomeView {
  
  // MARK: - Setup view
  
  func setupViews() {
    backgroundColor = .purple
    
    addSubview(amicaoLogo)
    addSubview(titleLabel)
    addSubview(textField)
    addSubview(bottomLabel)
    addSubview(startButton)
  }
  
  func setupConstraints() {
    NSLayoutConstraint.activate([
      amicaoLogo.topAnchor.constraint(equalTo: topAnchor, constant: 64),
      amicaoLogo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
      amicaoLogo.widthAnchor.constraint(equalToConstant: 64),
      amicaoLogo.heightAnchor.constraint(equalToConstant: 64),
      
      titleLabel.topAnchor.constraint(equalTo: amicaoLogo.bottomAnchor, constant: 16),
      titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
      titleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
      
      textField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
      textField.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
      textField.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
      textField.heightAnchor.constraint(equalToConstant: 44),

      bottomLabel.topAnchor.constraint(greaterThanOrEqualTo: textField.bottomAnchor, constant: 24),
      bottomLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
      bottomLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),

      startButton.topAnchor.constraint(equalTo: bottomLabel.bottomAnchor, constant: 48),
      startButton.centerXAnchor.constraint(equalTo: centerXAnchor),
      startButton.widthAnchor.constraint(equalToConstant: 256),
      startButton.heightAnchor.constraint(equalToConstant: 48),
      startButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -64),
    ])
  }
  
  // MARK: - Actions
  @objc func startButtonTapped() {
    buttonToggle.toggle()
    
    guard buttonToggle else {
      amicaoLogo.image = UIImage(named: "amicao-logo")
      return
    }
    
    amicaoLogo.image = UIImage(named: "cat-logo")
  }
}

extension WelcomeView: UITextFieldDelegate {
  
  // Método do botão "Enter" do teclado
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
  
  // Método chamado a cada caracter digitado
  func textField(_ textField: UITextField,
                 shouldChangeCharactersIn range: NSRange,
                 replacementString string: String) -> Bool {
    debugPrint("alterando texto")
    return true
  }
}
