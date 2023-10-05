//
//  HeaderBannerCollectionViewCell.swift
//  Disney+Design
//
//  Created by Omer on 28.09.2023.
//

import UIKit

// TODO: EXAMPLE CUSTOM DELEGATE
protocol HeaderBannerCollectionViewCellDelegate: AnyObject {
    func didClickSaveButton(index: Int)
}

class HeaderBannerCollectionViewCell: UICollectionViewCell {
    @IBOutlet private weak var bannerImageView: UIImageView!
    weak var delegate: HeaderBannerCollectionViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("BANNER IMAGE CELL ALI KOSE")
        // Initialization code
    }
    
    func configureCell(_ imageName: String) {
        self.bannerImageView.image = UIImage(named: imageName)
        delegate?.didClickSaveButton(index: 44)
    }
}
