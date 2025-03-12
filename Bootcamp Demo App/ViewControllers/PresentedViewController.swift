//
//  PresentedViewController.swift
//  Bootcamp Demo App
//
//  Created by George Termentzoglou on 10/3/25.
//

import UIKit

class PresentedViewController: UIViewController {
    
    var name: String?
    
    @IBAction func goBack(_ sender: Any) {
        //self.dismiss(animated: true)
        self.navigationController?.popViewController(animated: true)
        //self.navigationController?.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.title = "my title"
        // Do any additional setup after loading the view.
    }

}

extension PresentedViewController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        
        var viewController = self.navigationController?.viewControllers
        self.navigationController?.viewControllers = []
    }
}
