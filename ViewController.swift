//
//  ViewController.swift
//  Project 2
//
//  Created by Trey Burrell on 10/8/18.
//  Copyright © 2018 Trey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var groceryItem: UILabel!
    var quantity: UILabel!
    var groceryInput: UITextField!
    var quantityInput: UITextField!
    var addItem: UIButton!
    var groceryList: UILabel!
    var descriptionText: UITextView!
    var descTex = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        
        groceryItem = UILabel()
        groceryItem.translatesAutoresizingMaskIntoConstraints = false
        groceryItem.text = "Grocery Item:"
        groceryItem.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        groceryItem.textAlignment = .right
        groceryItem.textColor = .black
        view.addSubview(groceryItem)
        
        quantity = UILabel()
        quantity.translatesAutoresizingMaskIntoConstraints = false
        quantity.text = "Quantity:"
        quantity.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        quantity.textAlignment = .right
        quantity.textColor = .black
        view.addSubview(quantity)
        
        groceryInput = UITextField()
        groceryInput.translatesAutoresizingMaskIntoConstraints = false
        groceryInput.backgroundColor = .gray
        view.addSubview(groceryInput)
        
        quantityInput = UITextField()
        quantityInput.translatesAutoresizingMaskIntoConstraints = false
        quantityInput.backgroundColor = .gray
        view.addSubview(quantityInput)
        
        addItem = UIButton()
        addItem.translatesAutoresizingMaskIntoConstraints = false
        addItem.setTitle("Add Item", for: .normal)
        addItem.setTitleColor(.blue, for: .normal)
        addItem.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        addItem.addTarget(self, action: #selector(addItemWasTapped), for: .touchUpInside)
        view.addSubview(addItem)
        
        groceryList = UILabel()
        groceryList.translatesAutoresizingMaskIntoConstraints = false
        groceryList.text = "Grocery List:"
        groceryList.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        groceryList.textAlignment = .center
        groceryList.textColor = .black
        view.addSubview(groceryList)
        
        descriptionText = UITextView()
        descriptionText.translatesAutoresizingMaskIntoConstraints = false
        descriptionText.textColor = .black
        descriptionText.backgroundColor = .white
        descriptionText.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        descriptionText.isEditable = true
        descriptionText.textAlignment = .center
        descriptionText.text = descTex
        view.addSubview(descriptionText)
        
        setupConstraints()
        
    }
    
    // Setup our constraints
    func setupConstraints() {
        NSLayoutConstraint.activate([
            groceryItem.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            groceryItem.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            groceryItem.trailingAnchor.constraint(equalTo: view.centerXAnchor),
            groceryItem.heightAnchor.constraint(equalToConstant: 24)
            ])
        
        NSLayoutConstraint.activate([
            quantity.topAnchor.constraint(equalTo: groceryItem.bottomAnchor, constant: 20),
            quantity.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            quantity.trailingAnchor.constraint(equalTo: view.centerXAnchor),
            quantity.heightAnchor.constraint(equalToConstant: 24)
            ])
        
        NSLayoutConstraint.activate([
            groceryInput.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            groceryInput.leadingAnchor.constraint(equalTo: groceryItem.trailingAnchor, constant: 10),
            groceryInput.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            groceryInput.heightAnchor.constraint(equalToConstant: 30)
            ])
        
        NSLayoutConstraint.activate([
            quantityInput.topAnchor.constraint(equalTo: groceryItem.bottomAnchor, constant: 20),
            quantityInput.leadingAnchor.constraint(equalTo: quantity.trailingAnchor, constant: 10),
            quantityInput.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            quantityInput.heightAnchor.constraint(equalToConstant: 30)
            ])
        
        NSLayoutConstraint.activate([
            addItem.topAnchor.constraint(equalTo: quantity.bottomAnchor, constant: 60),
            addItem.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            addItem.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            addItem.heightAnchor.constraint(equalToConstant: 24)
            ])
        
        NSLayoutConstraint.activate([
            groceryList.topAnchor.constraint(equalTo: addItem.bottomAnchor, constant: 100),
            groceryList.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            groceryList.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            groceryList.heightAnchor.constraint(equalToConstant: 15)
            ])
        
        NSLayoutConstraint.activate([
            descriptionText.topAnchor.constraint(equalTo: groceryList.bottomAnchor),
            descriptionText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            descriptionText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            descriptionText.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8)
            ])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func addItemWasTapped() {
        descTex = descTex + "\nItem: " + groceryInput.text! + ", Quantity: " + quantityInput.text!
        viewDidLoad()
    }


}

