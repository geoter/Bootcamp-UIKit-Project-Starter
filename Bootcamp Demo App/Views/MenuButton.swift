//
//  MenuButton.swift
//  Bootcamp Demo App
//
//  Created by George Termentzoglou on 7/3/25.
//

import UIKit

class MenuButton: UIView {
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var lineView: UIView!
    
    private var onTapped: ((Bool) -> ())?
    
    func setup(name: String, onTap: @escaping (Bool) -> Void) {
        label.text = name
        onTapped = onTap
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        lineView.isHidden.toggle()
        self.onTapped?(!lineView.isHidden)
    }
}
