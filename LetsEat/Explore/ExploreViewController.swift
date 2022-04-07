//
//  ExploreViewController.swift
//  LetsEat
//
//  Created by niayesh bahreini on 4/4/22.
//

import UIKit

class ExploreViewController: UIViewController,
                            UICollectionViewDataSource,
                             UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
        return headerView
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView:
                        UICollectionView, cellForItemAt
                        indexPath: IndexPath) ->
                        UICollectionViewCell {
                            let cell = collectionView .dequeueReusableCell(withReuseIdentifier:"exploreCell",for: indexPath)
                            return cell
    }
    
   
 @IBOutlet var CollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func unwindLoactionCancel(segue:UIStoryboardSegue){
        
    }

}
