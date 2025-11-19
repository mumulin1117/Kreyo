//
//  LANDCOPEINspiredFeeCell.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/20.
//

import UIKit

class LANDCOPEINspiredFeeCell: UICollectionViewCell {

    @IBOutlet weak var LANDCOPEskillShare: UILabel!
    
    @IBOutlet weak var LANDCOPEtechniqueExchange: UIButton!
    
    @IBOutlet weak var LANDCOPEartCommunity: UILabel!
    
    
    
    @IBOutlet weak var LANDCOPElocalArtists: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        LANDCOPEgeometricPrecision()
        self.layer.cornerRadius = 20
       
        LANDCOPEskillShare.layer.borderWidth = 0
    }

    private func LANDCOPEgeometricPrecision()  {
        self.layer.masksToBounds = true
        
    }
}
