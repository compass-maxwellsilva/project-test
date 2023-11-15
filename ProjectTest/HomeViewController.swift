//
//  ViewController.swift
//  ProjectTest
//
//  Created by Maxwell da Silva e Silva on 14/11/23.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK: UI Components
    private lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Pesquisar"
        searchBar.showsCancelButton = false
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    private lazy var textLabel: UILabel = {
        let label = UILabel()
        label.text = "UILabel"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var myView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: Initializers
    override func viewDidLoad() {  // ---> Esse método controla o ciclo de vida da tela
        super.viewDidLoad()
        view.backgroundColor = .white
        setupConstraints()  // ---> Esse método é chamado aqui dentro pra tela entender que os elementos tem posições
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    // MARK: Methods
    private func setupConstraints() {
        view.addSubview(searchBar) // ---> Esse método adiciona os elementos na tela, na view principal.
        view.addSubview(textLabel)
        view.addSubview(myView)
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            textLabel.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 25),
            textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            myView.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 40),
            myView.heightAnchor.constraint(equalToConstant: 150),
            myView.widthAnchor.constraint(equalToConstant: 200),
            myView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

}

