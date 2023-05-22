//
//  ViewController.swift
//  Homework11
//
//  Created by Akbota Omarbek on 15.05.2023.
//

import UIKit

import SnapKit

class ViewController: UIViewController {
    
    //MARK: - UI
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "somet"
        label.font = .systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: -Lyfecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("")
    }
    
    //MARK: - Setup Views
    private func setupViews() {
        view.backgroundColor = .systemGreen
        view.addSubview(label)
    }
    
    //MARK: - Setup Constraints
    
    private func setupConstraints() {
        
    }
}



