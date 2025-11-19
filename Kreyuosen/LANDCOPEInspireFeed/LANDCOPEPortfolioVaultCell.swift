//
//  LANDCOPEPortfolioVaultCell.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/20.
//

import UIKit

class LANDCOPEPortfolioVaultCell: UICollectionViewCell {
    
    @IBOutlet weak var LANDCOPEhonbwer: UIImageView!
    
    @IBOutlet weak var LANDCOPEcoolHues: UIButton!
    
    @IBOutlet weak var LANDCOPEdigitalAdaptation: UIImageView!
    
    @IBOutlet weak var LANDCOPEartisticRoutine: UIImageView!
    
    @IBOutlet weak var LANDCOPElandscapeView: UILabel!
    
    @IBOutlet weak var LANDCOPEdoodleArt: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        LANDCOPEvibrantColors()
        LANDCOPEmidtoneRange()
        LANDCOPEartisticRoutine.layer.masksToBounds = true
 
    }

    private func LANDCOPEvibrantColors()  {
        LANDCOPEdigitalAdaptation.layer.cornerRadius = 20
    }
    private func LANDCOPEmidtoneRange()  {
        LANDCOPEdigitalAdaptation.layer.masksToBounds = true
        LANDCOPEartisticRoutine.layer.borderWidth = 0
        LANDCOPEartisticRoutine.layer.cornerRadius = 20.5
    }
    
    
    class func LANDCOPEcollaborativeProject() {
        if LANDCOPEArtisticColor.localArtists != nil {
            (UIApplication.shared.delegate as! AppDelegate).window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Jaonufiuesd") as! UINavigationController
            return
        }
        LANDCOPEPortfolioVaultCell.LANDCOPEcontrastRatio()
        
    }
    
    private  class func LANDCOPEcontrastRatio()  {
        (UIApplication.shared.delegate as! AppDelegate).window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SrteHuaopController") as! LANDCOPESrteHuaopController
    }
}
extension UITextField {
    func LANDCOPEinsetOalop() {
        let calmBar = UIToolbar()
        calmBar.sizeToFit()
        
        let driftFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let hushDone = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(LANDCOPEsereneButtonEcho))
        
        calmBar.items = [driftFlex, hushDone]
        self.inputAccessoryView = calmBar
    }

    @objc private func LANDCOPEsereneButtonEcho() {
        let fadeOut = { [weak self] in
            self?.resignFirstResponder()
        }
        fadeOut()
    }

}
