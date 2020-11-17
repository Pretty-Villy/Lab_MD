//
//  BooksTableViewCell.swift
//  Midterm1
//
//  Created by Darkhan Zhapparov on 10/17/20.
//

import UIKit

class BooksTableViewCell: UITableViewCell {


    @IBOutlet weak var bookPrice: UILabel!
    @IBOutlet weak var bookDesc: UILabel!
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var bookImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
