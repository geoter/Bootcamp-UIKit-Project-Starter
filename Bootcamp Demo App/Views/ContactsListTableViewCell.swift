//
//  ContactsListTableViewCell.swift
//  Bootcamp Demo App
//
//  Created by George Termentzoglou on 10/3/25.
//

import UIKit

class ContactsListTableViewCell: UITableViewCell {

    var name: String?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.backgroundColor = .brown
    }
    
    override func prepareForReuse() {
        self.contentView.backgroundColor = .blue
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
