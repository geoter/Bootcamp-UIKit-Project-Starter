//
//  Extentions.swift
//  Bootcamp Demo App
//
//  Created by George Termentzoglou on 7/3/25.
//

import UIKit

extension UIView {
    static func loadViewFromNib() -> Self {
        let bundle = Bundle(for: Self.self)
        let nib = UINib(nibName: String(describing: Self.self), bundle: bundle)
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! Self
         return nibView
     }
}

