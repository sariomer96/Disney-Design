//
//  HomeViewController.swift
//  Disney+Design
//
//  Created by Omer on 28.09.2023.
//

import UIKit

final class HomeViewController: UIViewController {
    @IBOutlet weak var fourCollectionView: UICollectionView!
    @IBOutlet weak var firstCollectionView: UICollectionView!
    
    @IBOutlet weak var thirdCollectionView: UICollectionView!
    @IBOutlet weak var secondCollectionView: UICollectionView!
    var images: [String] = ["mandalorian","mandalorian","mandalorian","mandalorian","mandalorian"]
    var images2: [String] = ["disney","natGeo","starWars","marvel","natGeo","starWars","disney","natGeo","starWars"]
    var images3: [String] = ["cptMarvel","simpsons","toyStory","simpsons","toyStory","cptMarvel","simpsons","toyStory"]
    var images4: [String] = ["highMusic","ladyTramp","noelle","highMusic","ladyTramp","noelle","highMusic","ladyTramp","noelle"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
         
        // Do any additional setup after loading the view.
    }
    
 
    

    
}

extension HomeViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         
        if collectionView == self.firstCollectionView {
            return images.count
        }else if collectionView == self.secondCollectionView {
            return images2.count
        }else if collectionView == self.thirdCollectionView {
            return images3.count
        }else{
              print("count")
            return  images4.count
        }
          
            
           
    // return   images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        if collectionView == self.firstCollectionView {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionCell
            
            cell.imageView.image = UIImage(named: images[indexPath.row])
           
            return cell
        } else if collectionView == self.secondCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionCellSecond
            
            cell.imageView.image = UIImage(named: images2[indexPath.row])
           
            return cell
        }else if collectionView == self.thirdCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionCellThird
            
            cell.imageView.image = UIImage(named: images3[indexPath.row])
           
            return cell
        }else{
            print("cel4")
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath) as! CollectionCell4
            
            cell.imageView.image = UIImage(named: images4[indexPath.row])
          
           
            return cell
        }
            
    
        
    }
    
    
 
}
