//
//  ViewController.swift
//  Homework11
//
//  Created by Akbota Omarbek on 15.05.2023.
//
import UIKit
import SnapKit

final class ViewController: UIViewController {
    
    // MARK: UI Components
    private lazy var backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "background")
        return imageView
    }()
    
    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.font = .systemFont(ofSize: 25, weight: .bold)
        return label
    }()
    
    private lazy var userTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "email"
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        textField.setLeftIcon(UIImage(named: "person") ?? UIImage.remove)
        
        //        textField.setRightIcon(UIImage(named: "tick") ?? UIImage.remove)
        return textField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "password"
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        //        let imageView = UIImageView(image: UIImage(named: "person"))
        textField.setLeftIcon(UIImage(named: "block") ?? UIImage.remove)
        //        textField.leftView = imageView
        return textField
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.backgroundColor = UIColor(named: "loginColor")
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
//        button.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    private lazy var forgotYourPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Forgot your password?"
        label.font = .systemFont(ofSize: 14)
        label.textAlignment = .center
        label.textColor = .white
//        label.numberOfLines = 10
        return label
    }()
    
    
    private lazy var orConnectWithLabel: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.font = .systemFont(ofSize: 14)
        label.textAlignment = .center
        label.numberOfLines = 5
        label.textColor = .gray

        return label
    }()
    
//    private lazy var facebookButton: UIButton = {
//        let label = UIButton()
//        label.text = "Facebook"
//        label.textColor = .white
//        label.font = .systemFont(ofSize: 25, weight: .bold)
//        return label
//    }()
    
    private lazy var facebookButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.backgroundColor = UIColor(named: "facebookColor")
        button.setTitle("Facebook", for: .normal)
        button.setTitleColor(.white, for: .normal)
//        button.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var twitterButton: UIButton = {
            let button = UIButton()
            button.setTitle("Twitter", for: .normal)
            button.setTitleColor(.black, for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setImage(UIImage(systemName: "twitter"), for: .normal)
            return button
        }()
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(backgroundImage)
        view.addSubview(loginLabel)
        view.addSubview(userTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(forgotYourPasswordLabel)
        view.addSubview(orConnectWithLabel)
        view.addSubview(facebookButton)
//        view.addSubview(twitterButton)
        
        
        backgroundImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview().offset(-300)
        }
        
        loginLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide).offset(60)
        }
        
        userTextField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(50)
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-50)
            make.height.equalTo(40)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(userTextField.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-50)
            make.height.equalTo(40)
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(48)
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-50)
            make.height.equalTo(35)
        }
        
        forgotYourPasswordLabel.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(24)
            make.leading.equalToSuperview().offset(100)
            make.trailing.equalToSuperview().offset(-100)
            make.height.equalTo(14)
        }
        
        orConnectWithLabel.snp.makeConstraints { make in
            make.top.equalTo(forgotYourPasswordLabel.snp.bottom).offset(183)
            make.leading.equalToSuperview().offset(100)
            make.trailing.equalToSuperview().offset(-100)
            make.height.equalTo(14)
        }

       facebookButton.snp.makeConstraints { make in
            make.top.equalTo(orConnectWithLabel.snp.bottom).offset(25)
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-50)
            make.height.equalTo(35)
        }
        
        twitterButton.snp.makeConstraints { make in
             make.top.equalTo(orConnectWithLabel.snp.bottom).offset(25)
            make.leading.equalTo(view.leading.offset(-50)
             make.trailing.equalToSuperview().offset(-50)
             make.height.equalTo(35)
         }
        
    }
}



extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
        
    }
}

