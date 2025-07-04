//
//  ArtToolkitARTCell.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/20.
//

import UIKit

class ArtToolkitARTCell: UICollectionViewCell {

    @IBOutlet weak var beginnerFriendly: UIButton!
    
    @IBOutlet weak var stepByStepGuide: UIImageView!
    
    
    @IBOutlet weak var artChallenge: UIButton!
    
    
    @IBOutlet weak var promptIdeas: UILabel!
    
    @IBOutlet weak var creativityBoost: UILabel!
    
    class var advancedTechnique:Int?{
        get{
            return UserDefaults.standard.object(forKey: "advancedTechnique") as? Int
        }set{
            UserDefaults.standard.set(newValue, forKey: "advancedTechnique")
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        
        beginnerFriendly.layer.cornerRadius = 10
        beginnerFriendly.layer.masksToBounds = true
    }

}
