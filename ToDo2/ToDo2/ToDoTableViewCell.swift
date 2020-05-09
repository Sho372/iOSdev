//
//  ToDoTableViewCell.swift
//  ToDo2
//
//  Created by user169300 on 5/7/20.
//  Copyright © 2020 user169300. All rights reserved.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {

    @IBOutlet weak var ToDoLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(with todo: ToDo){
        ToDoLabel.text = todo.title
    }

}
