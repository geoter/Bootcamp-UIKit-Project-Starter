//
//  RedViewController.swift
//  Bootcamp Demo App
//
//  Created by George Termentzoglou on 11/3/25.
//

import UIKit

protocol RedViewControllerDelegate: AnyObject {
    func closeMe()
}

class RedViewController: UIViewController {
    var onClick: ((String?) -> Void)?
    
    var input: String?
    
    weak var delegate: RedViewControllerDelegate?
    
    @IBAction func buttonClicked(_ sender: Any) {
        self.onClick?(input)
        self.delegate?.closeMe()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
