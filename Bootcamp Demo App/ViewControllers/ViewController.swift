//
//  ViewController.swift
//  Bootcamp Demo App
//
//  Created by George Termentzoglou on 27/2/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var optionsStackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let menuButton = MenuButton.loadViewFromNib()
        
        menuButton.setup(name: "hi!", onTap: { [weak self] isSelected in
            self?.showDetails()
            //self?.addButton()
        })
        
        optionsStackView.addArrangedSubview(menuButton)
        self.navigationController?.delegate = self
    }
    
    private func showDetails() {
        //guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "myVC") else { return }
        let vc = ThirdViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        //self.present(vc, animated: true)
    }
    
    private func addButton() {
        let btn = UIButton()
        btn.backgroundColor = .red
        btn.frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        self.view.addSubview(btn)
        
        UIView.animate(withDuration: 1.0) {
            btn.frame.origin.y = 500
        }
    }
}

extension ViewController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        //viewController.view.backgroundColor = .green
    }
}

