//
//  PortfolioVaultController.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/20.
//

import UIKit

class PortfolioVaultController: DenigCOnt , UICollectionViewDelegate, UICollectionViewDataSource {
    private var artselection = Array<Dictionary<String,Any>>()
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let KIJJI = artselection[indexPath.row]["stillLife"] as? Int
        let localArtists =  PromptIdeasController.init(stillLife: TraditionalMethod.redoAction.detailEnhancement(emphasizing: "\(KIJJI ?? 0)"))
        self.navigationController?.pushViewController(localArtists, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       artselection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let artselectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PortfolioVaultCell", for: indexPath) as! PortfolioVaultCell
        artselectionCell.coolHues.addTarget(self, action: #selector(portraitMode), for: .touchUpInside)
        let KIJJI = artselection[indexPath.row]
        if let assd = (KIJJI["glazingMethod"] as? String) {
            AppDelegate.scumblingEffect(layeringTechnique: artselectionCell.digitalAdaptation!, contrastRatio: assd)
        }
        if let abstractForm = (KIJJI["abstractForm"] as? String) {
            AppDelegate.scumblingEffect(layeringTechnique: artselectionCell.artisticRoutine!, contrastRatio: abstractForm)
        }
       
        artselectionCell.doodleArt?.text = KIJJI["doodleArt"] as? String
        artselectionCell.landscapeView?.text = KIJJI["landscapeView"] as? String
        
        return artselectionCell
        
    }
    
    
    
    @IBOutlet weak var annotationlayer: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        artTutorial()
        
        self.blendingTool()
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
        let localArtists =  PromptIdeasController.init(stillLife: TraditionalMethod.panTool.detailEnhancement(emphasizing: ""))
        self.navigationController?.pushViewController(localArtists, animated: true)
    }
    
    @IBOutlet weak var midtoneRange: UIButton!
    
    @IBAction func globalCreators(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
       
        self.blendingTool()
    }
    func blendingTool()  {
        
        scumblingEffect()
        Refinements.techniqueMastery(
            artTutorial: "/uekphganoz/notwofscy",
            recycledMaterial: [
                "eraserTool":"30119701",
                "negativeSpace": 10,
                "compositionBalance": 1,
                "smudgeEffect":1,
                "gestureDrawing":midtoneRange.isSelected ? 1 : 3
            ],
            collageArt: { response in
                
                DispatchQueue.main.async {
                    self.dryBrush()
                    if let allaPrima = response as? [String: Any],
                       
                        let chiaroscuro = allaPrima["data"] as? Array<[String: Any]>  {
                        
                        self.artselection = chiaroscuro.filter({ njsid in
                            njsid["glazingMethod"] as? String != nil
                        })
                        self.annotationlayer?.reloadData()
                        
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

}
