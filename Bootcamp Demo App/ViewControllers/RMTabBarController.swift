//
//  RMTabBarController.swift
//  Bootcamp Demo App
//
//  Created by George Termentzoglou on 27/2/25.
//

import UIKit

class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let forth = UIViewController()
        forth.view.backgroundColor = .brown
        forth.tabBarItem.title = "Brown"
        self.viewControllers?.append(forth)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
