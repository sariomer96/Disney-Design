//
//  BantBannerTableViewCell.swift
//  Disney+Design
//
//  Created by Omer on 28.09.2023.
//

import UIKit

class BantBannerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bantCollectionView: UICollectionView!
    private var imageName: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bantCollectionView.dataSource = self
        bantCollectionView.delegate = self
        bantCollectionView.register(HeaderBannerCollectionViewCell.self, forCellWithReuseIdentifier: "HeaderBannerCollectionViewCell")
        // Initialization code
    }
//
//    required init(<#parameters#>) {
//        <#statements#>
//    }
    
    func configureCell(imageName: String) {
        self.imageName = imageName
    }
}

extension BantBannerTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeaderBannerCollectionViewCell", for: indexPath) as! HeaderBannerCollectionViewCell
        cell.delegate = self
        cell.configureCell("test")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Secilen eleman \(indexPath.section)")
    }
}


extension BantBannerTableViewCell: HeaderBannerCollectionViewCellDelegate {
    func didClickSaveButton(index: Int) {
        print("CELL E TIKLANDI : \(index)")
    }
}
