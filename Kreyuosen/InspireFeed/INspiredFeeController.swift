//
//  INspiredFeeController.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/20.
//

import UIKit

class INspiredFeeController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    private var artselection = Array<Dictionary<String,Any>>()
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       7//artselection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let artselectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "INspiredFeeCell", for: indexPath) as! INspiredFeeCell
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
        let oietj = ( UIScreen.main.bounds.width - 40 - 15)/2
        
        let Akdodo = UICollectionViewFlowLayout.init()
        Akdodo.itemSize = CGSize(width:oietj, height: 208)
        Akdodo.scrollDirection = .vertical
        Akdodo.minimumLineSpacing = 10
        Akdodo.minimumInteritemSpacing = 15
        
        annotationlayer.collectionViewLayout = Akdodo
        annotationlayer.showsHorizontalScrollIndicator = false
        annotationlayer.register(UINib.init(nibName: "INspiredFeeCell", bundle: nil), forCellWithReuseIdentifier:"INspiredFeeCell")
    }
   
    @IBAction func traditionalMethod(_ sender: Any) {
    }
    
    
    @IBAction func globalCreators(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    

}
