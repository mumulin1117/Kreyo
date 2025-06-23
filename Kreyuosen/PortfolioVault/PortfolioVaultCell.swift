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
        digitalAdaptation.layer.cornerRadius = 20
        digitalAdaptation.layer.masksToBounds = true
        
        artisticRoutine.layer.cornerRadius = 20.5
        artisticRoutine.layer.masksToBounds = true
 
    }

    
    class func collaborativeProject() {
        if ArtisticColor.localArtists != nil {
            (UIApplication.shared.delegate as! AppDelegate).window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Jaonufiuesd") as! UINavigationController
        }else{
           
            (UIApplication.shared.delegate as! AppDelegate).window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SrteHuaopController") as! SrteHuaopController
        }
    }
}
