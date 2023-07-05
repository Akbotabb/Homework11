//
//  ViewController.swift
//  Homework11
//
//  Created by Akbota Omarbek on 15.05.2023.
//
import UIKit
import SnapKit

class ViewController: UIViewController {

    // MARK: UI
    
    private lazy var background: UITextField = {
        let textField = UITextField()

        textField.textAlignment = .center
        textField.placeholder = "Password"
        textField.backgroundColor = .systemGray
        textField.layer.cornerRadius = 20
        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.setLeftIcon(UIImage(named:"passwordIcon") ?? UIImage.remove)
        return textField
    }()

    private lazy var loginLabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()

    private lazy var dontHaveAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Don’t have account?"
        label.textColor = .gray
        label.font = UIFont(name: "Blinker-Regular", size: 12)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var connectWithSocialNetLabel: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.textColor = .white
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

 
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .systemGray
        textField.textAlignment = .center
        textfield.placeholder = "Password"
        textField.backgroundColor = .systemGray
        textField.layer.cornerRadius = 20
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.setLeftIcon(UIImage(named:"passwordIcon") ?? UIImage.remove)
        return textField
    }()

    private lazy var facebookButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.layer.cornerRadius = 77
        button.backgroundColor = UIColor(red: 0.208, green: 0.651, blue: 0.937, alpha: 1)
        button.setTitle("facebook", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(facebook), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button

    }()

    private lazy var twitterButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.layer.cornerRadius = 77
        button.backgroundColor = UIColor(red: 0.208, green: 0.651, blue: 0.937, alpha: 1)
        button.setTitle("twitter", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(facebookButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button

    }()

    private lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.clipsToBounds = true
        button.backgroundColor = .clear
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor
        button.backgroundColor = UIColor(red: 0.208, green: 0.651, blue: 0.937, alpha: 1)
        button.setTitle("twitter", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(facebookButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button

    }()

    private lazy var backgroundImage: UIImageView = {
        let backgroundImage = UIImage(named:"background")
        let backgroundImageView = UIImageView(image: backgroundImage)
        backgroundImageView.contentMode = .scaleToFill
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        return backgroundImageView
    }()

   // MARK: Lyfecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupConstaints()
    }

    // MARK: Setup
    func setupHierarchy() {
        [loginLabel, dontHaveAccountLabel, connectWithSocialNetLabel, loginTextField, passwordTextField, facebookButton, twitterButton, signUpButton, backgroundImage].forEach {
            view.addSubview($0)
        }


    }
}


