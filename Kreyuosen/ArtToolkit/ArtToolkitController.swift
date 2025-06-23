//
//  ArtToolkitController.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/20.
//

import UIKit

import FSPagerView
extension Double {
    
    var xInspire: CGFloat {
        return UIScreen.main.bounds.width * CGFloat(self) / 375.0
    }
    
    var yInspire: CGFloat {
        return UIScreen.main.bounds.height * CGFloat(self) / 812.0
    }
}

class ArtToolkitController: DenigCOnt, FSPagerViewDelegate, FSPagerViewDataSource, UICollectionViewDataSource, UICollectionViewDelegate {
    private var sfumatoEffect = Array<Dictionary<String,Any>>()
    private var artselection = Array<Dictionary<String,Any>>()
    
    @IBAction func textureBrush(_ sender: UIButton) {
        let localArtists =  PromptIdeasController.init(stillLife: TraditionalMethod.perspectiveGuide.detailEnhancement(emphasizing: ""))
        self.navigationController?.pushViewController(localArtists, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let KIJJI = artselection[indexPath.row]["stillLife"] as? Int
        let localArtists =  PromptIdeasController.init(stillLife: TraditionalMethod.shortcutKey.detailEnhancement(emphasizing: "\(KIJJI ?? 0)"))
        self.navigationController?.pushViewController(localArtists, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        artselection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let artselectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArtToolkitARTCell", for: indexPath) as! ArtToolkitARTCell
        let KIJJI = artselection[indexPath.row]
        if let assd = (KIJJI["coolHues"] as? Array<String>)?.first  {
            AppDelegate.scumblingEffect(layeringTechnique: artselectionCell.stepByStepGuide!, contrastRatio: assd)
        }
       
        artselectionCell.creativityBoost?.text = KIJJI["landscapeView"] as? String
        artselectionCell.promptIdeas?.text = KIJJI["portraitMode"] as? String
        
        artselectionCell.artChallenge.addTarget(self, action: #selector(portraitMode), for: .touchUpInside)
        artselectionCell.beginnerFriendly.setTitle("\(KIJJI["realismTechnique"] as? Int ?? 0)", for: .normal)
        return artselectionCell
        
    }
    
    @IBAction func realismTechnique(_ sender: UIButton) {
        let localArtists =  PromptIdeasController.init(stillLife: TraditionalMethod.canvasSize.detailEnhancement(emphasizing: ""))
        self.navigationController?.pushViewController(localArtists, animated: true)
    }
    
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        sfumatoEffect.count
    }
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let mainge = pagerView.dequeueReusableCell(withReuseIdentifier: "mainge", at: index)
        mainge.imageView?.contentMode = .scaleAspectFill
        
        let KIJJI = sfumatoEffect[index]
        if let assd = (KIJJI["coolHues"] as? Array<String>)?.first  {
            AppDelegate.scumblingEffect(layeringTechnique: mainge.imageView!, contrastRatio: assd)
        }
       
       
        mainge.textLabel?.text = KIJJI["portraitMode"] as? String
        mainge.textLabel?.textColor = .white
        mainge.textLabel?.textAlignment = .center
        mainge.textLabel?.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        mainge.textLabel?.backgroundColor = .clear
        mainge.layer.cornerRadius = 20
        mainge.layer.masksToBounds = true
        return mainge
    }
    
    func pagerView(_ pagerView: FSPagerView, didSelectItemAt index: Int) {
        
        let localArtists =  PromptIdeasController.init(stillLife: TraditionalMethod.resolutionSetting.detailEnhancement(emphasizing: "\(index)"))
        self.navigationController?.pushViewController(localArtists, animated: true)
    }

    @IBOutlet weak var heightBrush: NSLayoutConstraint!
    
    @IBOutlet weak var drawingSessions: UIImageView!
    
    @IBOutlet weak var heightSelection: NSLayoutConstraint!
    
    @IBOutlet weak var brushStrokes: UIView!
    
    @IBOutlet weak var hsigonButron: NSLayoutConstraint!
    
    @IBOutlet weak var annotationlayer: UICollectionView!
    
    @IBOutlet weak var CreationSuit: NSLayoutConstraint!
    
    @IBOutlet weak var dremao: NSLayoutConstraint!
   
  
    private var sketchDekgn:FSPagerView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dremao.constant = 220.yInspire//高
        CreationSuit.constant = 244.yInspire
        heightBrush.constant =  210.yInspire
        heightSelection.constant =  177.yInspire
        hsigonButron.constant =  127.yInspire
        
        topiaibBer.constant =  20.yInspire
        Sdcvet.constant =  20.yInspire
        
        
        
        sketchDekgn = FSPagerView.init(frame: .zero)
        sketchDekgn?.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "mainge")
        sketchDekgn?.dataSource = self
        sketchDekgn?.transformer = FSPagerViewTransformer(type: .linear)
        sketchDekgn?.backgroundColor = .clear
        sketchDekgn?.itemSize = CGSize(width: 260, height: 210.yInspire) // 缩小尺寸增强立体
        
        sketchDekgn?.delegate = self
        if let transformer = sketchDekgn?.transformer as? FSPagerViewTransformer {
            transformer.minimumScale = 0.8  // 后方卡片缩放
            transformer.minimumAlpha = 0.5  // 后方卡片透明度
            
        }
        self.brushStrokes.addSubview(sketchDekgn ?? UIView())
        
        artTutorial()
        
        beginnerFriendly()
        
    }
        
        
        
        
    func artTutorial()  {
        annotationlayer.delegate = self
        annotationlayer.dataSource = self
        
        let Akdodo = UICollectionViewFlowLayout.init()
        Akdodo.itemSize = CGSize(width: 260.xInspire, height: 177.yInspire)
        Akdodo.scrollDirection = .horizontal
        Akdodo.minimumLineSpacing = 16
        Akdodo.minimumInteritemSpacing = 16
        
        annotationlayer.collectionViewLayout = Akdodo
        annotationlayer.showsHorizontalScrollIndicator = false
        annotationlayer.register(UINib.init(nibName: "ArtToolkitARTCell", bundle: nil), forCellWithReuseIdentifier:"ArtToolkitARTCell")
    }
   
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        sketchDekgn?.frame = brushStrokes.bounds
    }

    @IBOutlet weak var Sdcvet: NSLayoutConstraint!
    
    @IBOutlet weak var topiaibBer: NSLayoutConstraint!
    
    func beginnerFriendly()  {
        
        
        scumblingEffect()
        Refinements.techniqueMastery(
            artTutorial: "/uekphganoz/notwofscy",
            recycledMaterial: [
                "eraserTool":"30119701",
                "negativeSpace": 10,
                "compositionBalance": 1,
                "smudgeEffect":4
            ],
            collageArt: { response in
                
                DispatchQueue.main.async {
                    self.dryBrush()
                    if let allaPrima = response as? [String: Any],
                       
                        let chiaroscuro = allaPrima["data"] as? Array<[String: Any]>  {
                        
                        self.sfumatoEffect = chiaroscuro
                        self.sketchDekgn?.reloadData()
                       
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
        
        
        
        Refinements.techniqueMastery(
            artTutorial: "/uekphganoz/notwofscy",
            recycledMaterial: [
                "eraserTool":"30119701",
                "negativeSpace": 10,
                "compositionBalance": 1,
                "smudgeEffect":5,"gestureDrawing":2
            ],
            collageArt: { response in
                
                DispatchQueue.main.async {
                    self.dryBrush()
                    if let dict = response as? [String: Any],
                       
                        let chiaroscuro = dict["data"]  as? Array<[String: Any]>  {
                        
                        
                        self.artselection = chiaroscuro
                        self.annotationlayer.reloadData()
                    } else {
                        self.stipplingArt(stiping: "Unexpected response format.")
                        
                    }
                    
                }
            }, foundObject: nil
        )
        
    }

    
}


