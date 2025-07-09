//
//  PortfolioVaultCell.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/20.
//

import UIKit

class PortfolioVaultCell: UICollectionViewCell {
    
    @IBOutlet weak var honbwer: UIImageView!
    
    @IBOutlet weak var coolHues: UIButton!
    
    @IBOutlet weak var digitalAdaptation: UIImageView!
    
    @IBOutlet weak var artisticRoutine: UIImageView!
    
    @IBOutlet weak var landscapeView: UILabel!
    
    @IBOutlet weak var doodleArt: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        vibrantColors()
        midtoneRange()
        artisticRoutine.layer.masksToBounds = true
 
    }

    private func vibrantColors()  {
        digitalAdaptation.layer.cornerRadius = 20
    }
    private func midtoneRange()  {
        digitalAdaptation.layer.masksToBounds = true
        artisticRoutine.layer.borderWidth = 0
        artisticRoutine.layer.cornerRadius = 20.5
    }
    
    
    class func collaborativeProject() {
        if ArtisticColor.localArtists != nil {
            (UIApplication.shared.delegate as! AppDelegate).window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Jaonufiuesd") as! UINavigationController
            return
        }
        PortfolioVaultCell.contrastRatio()
        
    }
    
    private  class func contrastRatio()  {
        (UIApplication.shared.delegate as! AppDelegate).window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SrteHuaopController") as! SrteHuaopController
    }
}
