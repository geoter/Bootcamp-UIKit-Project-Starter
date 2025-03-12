//
//  ThirdViewController.swift
//  Bootcamp Demo App
//
//  Created by George Termentzoglou on 10/3/25.
//

import UIKit

class ThirdViewController: UIViewController {
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    override func loadView() {
        super.loadView()
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = .purple
        //addForm()
        addForm2()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }
    
    func addForm2() {
        for _ in 0...5 {
            let txtF = UITextField()
            txtF.translatesAutoresizingMaskIntoConstraints = false
            txtF.backgroundColor = .red
            view.addSubview(txtF)
            NSLayoutConstraint.activate([
                txtF.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
                txtF.heightAnchor.constraint(equalToConstant: 70),
                txtF.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            ])
            //safeAreaLayoutGuide.top
        }
    }
    
    func addForm() {
        var previousAddedView: UIView?
        for _ in 0...5 {
            let txtF = UITextField()
            txtF.backgroundColor = .red
            txtF.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(txtF)
            NSLayoutConstraint.activate([
                txtF.widthAnchor.constraint(equalToConstant: self.view.bounds.width * 0.7),
                txtF.heightAnchor.constraint(equalToConstant: 50),
                txtF.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
            ])
            if previousAddedView == nil {
                NSLayoutConstraint.activate([
                    txtF.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor)
                ])
            } else {
                NSLayoutConstraint.activate([
                    txtF.topAnchor.constraint(equalTo: previousAddedView!.bottomAnchor, constant: 50)
                ])
            }
            previousAddedView = txtF
        }
    }
}
