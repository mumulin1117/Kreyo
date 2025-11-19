//
//  LANDCOPEArtToolkitARTCell.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/20.
//

import UIKit

class LANDCOPEArtToolkitARTCell: UICollectionViewCell {

    @IBOutlet weak var LANDCOPEbeginnerFriendly: UIButton!
    
    @IBOutlet weak var LANDCOPEtepByStepGuide: UIImageView!
    
    
    @IBOutlet weak var LANDCOPEartChallenge: UIButton!
    
    
    @IBOutlet weak var LANDCOPEpromptIdeas: UILabel!
    
    @IBOutlet weak var LANDCOPEcreativityBoost: UILabel!
    
    class var LANDCOPEadvancedTechnique:Int?{
        get{
            return UserDefaults.standard.object(forKey: "advancedTechnique") as? Int
        }set{
            UserDefaults.standard.set(newValue, forKey: "advancedTechnique")
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 20
        LANDCOPEorganicShapes()
        LANDCOPEbeginnerFriendly.layer.masksToBounds = true
    }

    private func LANDCOPEorganicShapes()  {
        self.layer.masksToBounds = true
        LANDCOPEpromptIdeas.layer.borderWidth = 0
        LANDCOPEbeginnerFriendly.layer.cornerRadius = 10
    }
}
