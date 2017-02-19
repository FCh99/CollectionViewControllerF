//
//  CollectionViewController.swift
//  CollectionViewControlerF
//
//  Created by Fausto Checa on 18/2/17.
//  Copyright © 2017 Fausto Checa. All rights reserved.
//

import UIKit

let reuseIdentifier = "Cell"


class CollectionViewController: UICollectionViewController {
    
    var images = ["one", "two", "three", "four", "five", "six"]
    

    // OJO no debe haber register...
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return images.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
        
        cell.myImageView.image = UIImage(named: images[indexPath.row])
    
        return cell
    }

    // MARK: UICollectionViewDelegate.....

    

}
