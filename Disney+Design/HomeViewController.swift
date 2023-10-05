//
//  HomeViewController.swift
//  Disney+Design
//
//  Created by Omer on 28.09.2023.
//

import UIKit

final class HomeViewController: UIViewController {
    @IBOutlet weak var firstCollectionView: UICollectionView!
    
    @IBOutlet weak var secondCollectionView: UICollectionView!
    var images: [String] = ["mandalorian","test","mandalorian","mandalorian"]
    var images2: [String] = ["test","test","mandalorian","mandalorian","mandalorian","mandalorian","mandalorian","mandalorian"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
         
        // Do any additional setup after loading the view.
    }
    
 
    

    
}

extension HomeViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         
        if collectionView == self.firstCollectionView {
            return images.count
        }else  {
            return images2.count
        }
           
    // return   images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        if collectionView == self.firstCollectionView {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionCell
            
            cell.imageView.image = UIImage(named: images[indexPath.row])
          
            print(cell)
            return cell
        }else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionCellSecond
            
            cell.imageView.image = UIImage(named: images2[indexPath.row])
          
            print(cell)
            return cell
        }
    
        
    }
    
    
 
}
