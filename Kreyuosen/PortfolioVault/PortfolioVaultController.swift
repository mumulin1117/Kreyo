//
//  PortfolioVaultController.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/20.
//

import UIKit

class PortfolioVaultController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource {
    private var artselection = Array<Dictionary<String,Any>>()
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       7//artselection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let artselectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PortfolioVaultCell", for: indexPath) as! PortfolioVaultCell
        return artselectionCell
        
    }
    
    
    
    @IBOutlet weak var annotationlayer: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        artTutorial()
    }
    
    func artTutorial()  {
        annotationlayer.delegate = self
        annotationlayer.dataSource = self
        let oietj = ( UIScreen.main.bounds.width - 80 )
        
        let Akdodo = UICollectionViewFlowLayout.init()
        Akdodo.itemSize = CGSize(width:oietj, height: annotationlayer.frame.height)
        Akdodo.scrollDirection = .horizontal
        Akdodo.minimumLineSpacing = 20.xInspire
        Akdodo.minimumInteritemSpacing = 20.xInspire
        annotationlayer.isPagingEnabled = true
        annotationlayer.collectionViewLayout = Akdodo
        annotationlayer.showsHorizontalScrollIndicator = false
        annotationlayer.register(UINib.init(nibName: "PortfolioVaultCell", bundle: nil), forCellWithReuseIdentifier:"PortfolioVaultCell")
    }
   
    @IBAction func traditionalMethod(_ sender: Any) {
        
    }
    
    
    @IBAction func globalCreators(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    

}
