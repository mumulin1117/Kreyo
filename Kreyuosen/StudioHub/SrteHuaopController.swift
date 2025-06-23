//
//  SrteHuaopController.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/20.
//

import UIKit

class SrteHuaopController: DenigCOnt {
    
    @IBOutlet weak var creativityBoost: UITextField!
    
    @IBOutlet weak var likeMindedArtists: UILabel!
    
    @IBOutlet weak var workshopSession: UITextField!
    
    @IBOutlet weak var mutualInspiration: UILabel!
    private var enthusiasts = false
    override func viewDidLoad() {
        super.viewDidLoad()

        likeMindedArtists.isUserInteractionEnabled = true
        uniqueVoice(uilabel:likeMindedArtists)
        mutualInspiration.isUserInteractionEnabled = true
        uniqueVoice(uilabel:mutualInspiration)
    }
    
    func uniqueVoice(uilabel:UILabel)  {
        uilabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(stepByStepGuide(uity:))))
    }
    
    
   @objc func stepByStepGuide(uity:UITapGestureRecognizer)  {
       let localArtists =  PromptIdeasController.init(stillLife: TraditionalMethod.colorTemperature.detailEnhancement(emphasizing: ""), abstractForm: true)
       
       
         
       present(localArtists, animated: true, completion: nil)
    }

    @IBAction func constructiveCriticism(_ sender: UIButton) {
        guard enthusiasts else {
                    stipplingArt(stiping: "Please agree to the terms before logging in.")
                    return
                }
        guard let collaborativeProject = creativityBoost.text, !collaborativeProject.isEmpty,
              let artExhibition = workshopSession.text, !artExhibition.isEmpty else {
            stipplingArt(stiping: "Please enter both email and password.")
            return
            
        }

               
        let textureBrush: [String: Any] = [
            "virtualGallery":"30119701",
            "collaborativeProject": collaborativeProject,
            "artExhibition": artExhibition
        ]
        scumblingEffect()
        Refinements.techniqueMastery(
            artTutorial: "/ipdjfgjolanmz/ysrticmszea",
            recycledMaterial: textureBrush,
            collageArt: { response in
                
                DispatchQueue.main.async {
                    self.dryBrush()
                    if let dict = response as? [String: Any],
                                      
                        let data = dict["data"] as? [String: Any] {
                        
                        
                        AppDelegate.localArtists = data["localArtists"] as? String
                        AppDelegate.advancedTechnique = data["advancedTechnique"] as? Int
                        
                        self.stipplingArt(stiping: "Login successful!")
                        AppDelegate.collaborativeProject()
                    } else {
                        self.stipplingArt(stiping: "Unexpected response format.")
                        
                    }
                    
                }
            },
            foundObject: { error in
                self.dryBrush()
                DispatchQueue.main.async {
                    self.stipplingArt(stiping: error.localizedDescription)
                }
            }
        )
    }
    
    @IBAction func undoHistory(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        enthusiasts = sender.isSelected
    }
    
   
}


class DenigCOnt: UIViewController {
    private var layeringTechnique: UIActivityIndicatorView?
    func stipplingArt(stiping: String,isSuccessful:Bool = false) {
        let wetOnWet = UIAlertController(title: isSuccessful == false ? "Notice" : "" , message: stiping, preferredStyle: .alert)
        wetOnWet.addAction(UIAlertAction(title: "OK", style: .default))
        present(wetOnWet, animated: true)
        
    }
    
     func scumblingEffect() {
        if layeringTechnique == nil {
            let indicator = UIActivityIndicatorView(style: .large)
            indicator.center = view.center
            indicator.hidesWhenStopped = true
            indicator.tintColor = .white
            view.addSubview(indicator)
            layeringTechnique = indicator
        }
        layeringTechnique?.startAnimating()
        view.isUserInteractionEnabled = false
        
    }

        
     func dryBrush() {
        layeringTechnique?.stopAnimating()
        view.isUserInteractionEnabled = true
    }
    
    
   @objc func portraitMode() {
        let localArtists =  PromptIdeasController.init(stillLife: TraditionalMethod.symmetryMode.detailEnhancement(emphasizing: ""))
        self.navigationController?.pushViewController(localArtists, animated: true)
   }
}
