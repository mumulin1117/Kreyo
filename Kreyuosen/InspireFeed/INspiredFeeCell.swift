//
//  INspiredFeeCell.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/20.
//

import UIKit

class INspiredFeeCell: UICollectionViewCell {

    @IBOutlet weak var skillShare: UILabel!
    
    @IBOutlet weak var techniqueExchange: UIButton!
    
    @IBOutlet weak var artCommunity: UILabel!
    
    
    
    @IBOutlet weak var localArtists: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        geometricPrecision()
        self.layer.cornerRadius = 20
       
        skillShare.layer.borderWidth = 0
    }

    private func geometricPrecision()  {
        self.layer.masksToBounds = true
        
    }
}
