//
//  CustomTableViewCell.swift
//  tableViews
//
//  Created by Rodrigo Leyva on 10/5/21.
//

import UIKit

protocol CustomCellDelegate: AnyObject {
    func showTaskDescription(description: String)
        
}
class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    weak var delegate: CustomCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    @IBAction func cellButtonPressed(_ sender: UIButton) {
        
        if let text = cellLabel.text {
            delegate?.showTaskDescription(description: text)
        }
    }
    
}
