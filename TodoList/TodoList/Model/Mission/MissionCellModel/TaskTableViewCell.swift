//
//  MissionTableVTableViewCell.swift
//  TodoList
//
//  Created by Robert on 22.11.23.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    @IBOutlet weak var missionLabel: UILabel!
    @IBOutlet weak var checkBoxButton: UIImage!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func getData(model: TaskModel) {
        
        missionLabel.text = model.title
        checkBoxButton = model.isCompleted ? UIImage(systemName: "checkmark.circle.fill") : UIImage(systemName: "checkmark.circle")
    }
}
