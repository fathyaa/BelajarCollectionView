//
//  ListCollectionViewCell.swift
//  BelajarCollectionView
//
//  Created by Phincon on 24/02/23.
//

import UIKit

class ListCollectionViewCell: UICollectionViewCell {

    static let identifier = "ListCollectionViewCell"
    @IBOutlet weak var image: UIImageView!{
        didSet{
            image.layer.cornerRadius = 15
        }
    }
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var viewCell: UIView!{
        didSet{
            viewCell.backgroundColor = UIColor(named: "view")
            viewCell.layer.cornerRadius = 15
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
