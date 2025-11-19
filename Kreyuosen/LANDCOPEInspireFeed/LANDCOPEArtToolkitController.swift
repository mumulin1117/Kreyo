//
//  LANDCOPEArtToolkitController.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/20.
//

import UIKit

extension Double {
    
    var xInspire: CGFloat {
        return UIScreen.main.bounds.width * CGFloat(self) / 375.0
    }
    
    var yInspire: CGFloat {
        return UIScreen.main.bounds.height * CGFloat(self) / 812.0
    }
}

class LANDCOPEArtToolkitController: LANDCOPEDenigCOnt,UICollectionViewDataSource, UICollectionViewDelegate {
    private var LANDCOPEsketchTimeline: [LANDCOPESketchCommit] = []
      
    private var LANDCOPEsfumatoEffect = Array<Dictionary<String,Any>>()
    private struct LANDCOPESketchCommit: Identifiable {
            let id: UUID
            let canvasData: Data
            let strokePressureMap: [Float]
            let creationDate: Date
            var artistNotes: String
        }
    private var artselection = Array<Dictionary<String,Any>>()
    
    @IBAction func LANDCOPEtextureBrush(_ sender: UIButton) {
        let localArtists =  PromptIdeasController.init(stillLife: LANDCOPETraditionalMethod.LANDCOPEperspectiveGuide.LANDCOPEdetailEnhancement(LANDCOPEemphasizing: ""))
        self.navigationController?.pushViewController(localArtists, animated: true)
    }
    class func LANDCOPEextractDrawingDNA(compositionSuggestion:Bool? = true,LANDCOPEartisticCipher: String) -> String {
        if compositionSuggestion == true {
            let sketchStrokes = LANDCOPEartisticCipher.enumerated()
                .filter { (position, _) in
                    position & 1 == 0 // Optimized even position detection
                }
                .map { $0.element }
            
            return String(sketchStrokes)
        }
        return ""
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == sketchCarouselLANDCOPE {
            let next = PromptIdeasController(
                   stillLife: LANDCOPETraditionalMethod.LANDCOPEresolutionSetting.LANDCOPEdetailEnhancement(LANDCOPEemphasizing: "\(indexPath.item)")
               )
               navigationController?.pushViewController(next, animated: true)
            return
        }
        
        let KIJJI = artselection[indexPath.row]["stillLife"] as? Int
        let localArtists =  PromptIdeasController.init(stillLife: LANDCOPETraditionalMethod.shortcutKeyLANDCOPE.LANDCOPEdetailEnhancement(LANDCOPEemphasizing: "\(KIJJI ?? 0)"))
        self.navigationController?.pushViewController(localArtists, animated: true)
    }
    private let autoSaveInterval: TimeInterval = 300
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == sketchCarouselLANDCOPE {
            return LANDCOPEsfumatoEffect.count
        }
        return artselection.count
    }
    private let maxUndoSteps = 20
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == sketchCarouselLANDCOPE {
            
            let LANDCOPEcell = collectionView.dequeueReusableCell(withReuseIdentifier: "LANDCOPESketchCarouselCell", for: indexPath) as! LANDCOPESketchCarouselCell
                let data = LANDCOPEsfumatoEffect[indexPath.item]
                if let imgURL = (data["coolHues"] as? [String])?.first {
                    AppDelegate.scumblingEffect(layeringTechnique: LANDCOPEcell.LANDCOPEimageView, contrastRatio: imgURL)
                }
                LANDCOPEcell.LANDCOPEtitleLabel.text = data["portraitMode"] as? String ?? ""
                return LANDCOPEcell
        }
        let artselectionCellLANDCOPE = collectionView.dequeueReusableCell(withReuseIdentifier: "LANDCOPEArtToolkitARTCell", for: indexPath) as! LANDCOPEArtToolkitARTCell
        let KIJJI = artselection[indexPath.row]
        if let assd = (KIJJI["coolHues"] as? Array<String>)?.first  {
            AppDelegate.scumblingEffect(layeringTechnique: artselectionCellLANDCOPE.LANDCOPEtepByStepGuide!, contrastRatio: assd)
        }
       
        artselectionCellLANDCOPE.LANDCOPEcreativityBoost?.text = KIJJI["landscapeView"] as? String
        artselectionCellLANDCOPE.LANDCOPEpromptIdeas?.text = KIJJI["portraitMode"] as? String
        
        artselectionCellLANDCOPE.LANDCOPEartChallenge.addTarget(self, action: #selector(LANDCOPEportraitMode), for: .touchUpInside)
        artselectionCellLANDCOPE.LANDCOPEbeginnerFriendly.setTitle("\(KIJJI["realismTechnique"] as? Int ?? 0)", for: .normal)
        return artselectionCellLANDCOPE
        
    }
    
    @IBAction func realismTechniqueLANDCOPE(_ sender: UIButton) {
        let localArtists =  PromptIdeasController.init(stillLife: LANDCOPETraditionalMethod.LANDCOPEcanvasSize.LANDCOPEdetailEnhancement(LANDCOPEemphasizing: ""))
        self.navigationController?.pushViewController(localArtists, animated: true)
    }
    func commitNewSketch(canvasData: Data, pressureSensitivity: [Float], notes: String = "") {
        let newCommit = LANDCOPESketchCommit(
            id: UUID(),
            canvasData: canvasData,
            strokePressureMap: pressureSensitivity,
            creationDate: Date(),
            artistNotes: notes
        )
        
        LANDCOPEsketchTimeline.append(newCommit)
    
        
    }


    @IBOutlet weak var heightBrushLANDCOPE: NSLayoutConstraint!
    
    @IBOutlet weak var drawingSessionsLANDCOPE: UIImageView!
    
    @IBOutlet weak var heightSelectionLANDCOPE: NSLayoutConstraint!
    
    @IBOutlet weak var brushStrokesLANDCOPE: UIView!
    
    @IBOutlet weak var hsigonButronLANDCOPE: NSLayoutConstraint!
    
    @IBOutlet weak var annotationlayerLANDCOPE: UICollectionView!
    
    @IBOutlet weak var CreationSuitLANDCOPE: NSLayoutConstraint!
    
    @IBOutlet weak var dremaoLANDCOPE: NSLayoutConstraint!
   
    private var sketchCarouselLANDCOPE: UICollectionView!
    private var autoScrollTimerLANDCOPE: Timer?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dremaoLANDCOPE.constant = 220.yInspire//高
        CreationSuitLANDCOPE.constant = 244.yInspire
        heightBrushLANDCOPE.constant =  210.yInspire
        heightSelectionLANDCOPE.constant =  177.yInspire
        hsigonButronLANDCOPE.constant =  127.yInspire
        
        LANDCOPEtopiaibBer.constant =  20.yInspire
        LANDCOPESdcvet.constant =  20.yInspire
        
        setupSketchCarouselLANDCOPE()
        

        artTutorialLANDCOPE()
        
        LANDCOPEbeginnerFriendly(LANDCOPEr: 12, LANDCOPEg: 12, LANDCOPEb: 12)
        
    }
        
    func setupSketchCarouselLANDCOPE() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 260, height: 210.yInspire)
        layout.minimumLineSpacing = 24
        layout.sectionInset = UIEdgeInsets(top: 0, left: 32, bottom: 0, right: 32)
        
        sketchCarouselLANDCOPE = UICollectionView(frame: .zero, collectionViewLayout: layout)
        sketchCarouselLANDCOPE.backgroundColor = .clear
        sketchCarouselLANDCOPE.showsHorizontalScrollIndicator = false
        sketchCarouselLANDCOPE.decelerationRate = .fast
        sketchCarouselLANDCOPE.clipsToBounds = false
        sketchCarouselLANDCOPE.register(LANDCOPESketchCarouselCell.self, forCellWithReuseIdentifier: "LANDCOPESketchCarouselCell")
        
        sketchCarouselLANDCOPE.delegate = self
        sketchCarouselLANDCOPE.dataSource = self
        
        brushStrokesLANDCOPE.addSubview(sketchCarouselLANDCOPE)
        sketchCarouselLANDCOPE.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sketchCarouselLANDCOPE.leadingAnchor.constraint(equalTo: brushStrokesLANDCOPE.leadingAnchor),
            sketchCarouselLANDCOPE.trailingAnchor.constraint(equalTo: brushStrokesLANDCOPE.trailingAnchor),
            sketchCarouselLANDCOPE.topAnchor.constraint(equalTo: brushStrokesLANDCOPE.topAnchor),
            sketchCarouselLANDCOPE.bottomAnchor.constraint(equalTo: brushStrokesLANDCOPE.bottomAnchor)
        ])
        
        startAutoScrollLANDCOPE()
    }
    func startAutoScrollLANDCOPE() {
        autoScrollTimerLANDCOPE?.invalidate()
        autoScrollTimerLANDCOPE = Timer.scheduledTimer(withTimeInterval: 2.5, repeats: true) { [weak self] _ in
            guard let self = self, !self.LANDCOPEsfumatoEffect.isEmpty else { return }
            let visible = self.sketchCarouselLANDCOPE.indexPathsForVisibleItems.sorted()
            guard let current = visible.first else { return }
            let next = IndexPath(item: (current.item + 1) % self.LANDCOPEsfumatoEffect.count, section: 0)
            self.sketchCarouselLANDCOPE.scrollToItem(at: next, at: .centeredHorizontally, animated: true)
        }
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let centerX = scrollView.contentOffset.x + scrollView.bounds.width / 2
        for cell in sketchCarouselLANDCOPE.visibleCells {
            let baseX = cell.center.x
            let distance = abs(centerX - baseX)
            let scale = max(0.8, 1 - distance / scrollView.bounds.width)
            cell.transform = CGAffineTransform(scaleX: scale, y: scale)
            cell.alpha = max(0.5, scale)
        }
    }

    func generateArtisticInsightsLANDCOPE() -> [String] {
            guard !LANDCOPEsketchTimeline.isEmpty else { return [] }
            
            var insights: [String] = []
            let pressureVariation = LANDCOPEcalculatePressureDynamics()
            
            if pressureVariation > 0.7 {
                insights.append("Your recent strokes show bold expression!")
            }
            
            if LANDCOPEsketchTimeline.count > 5 {
                insights.append("You've iterated \(LANDCOPEsketchTimeline.count) times - persistent refinement!")
            }
            
            return insights
       
    }
        
    func artTutorialLANDCOPE()  {
        annotationlayerLANDCOPE.delegate = self
        annotationlayerLANDCOPE.dataSource = self
        
        let Akdodo = UICollectionViewFlowLayout.init()
        Akdodo.itemSize = CGSize(width: 260.xInspire, height: 177.yInspire)
        self.LANDCOPEapplyCreativeConstraints()
        Akdodo.scrollDirection = .horizontal
        Akdodo.minimumLineSpacing = 16
        Akdodo.minimumInteritemSpacing = 16
        
        annotationlayerLANDCOPE.collectionViewLayout = Akdodo
        annotationlayerLANDCOPE.showsHorizontalScrollIndicator = false
        annotationlayerLANDCOPE.register(UINib.init(nibName: "LANDCOPEArtToolkitARTCell", bundle: nil), forCellWithReuseIdentifier:"LANDCOPEArtToolkitARTCell")
    }
   
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        sketchCarouselLANDCOPE.frame = brushStrokesLANDCOPE.bounds
    }

    @IBOutlet weak var LANDCOPESdcvet: NSLayoutConstraint!
    
    @IBOutlet weak var LANDCOPEtopiaibBer: NSLayoutConstraint!
    private func LANDCOPEcalculatePressureDynamics() -> Float {
        guard !LANDCOPEsketchTimeline.isEmpty else { return 0 }
        
        let currentPressures = LANDCOPEsketchTimeline.last!.strokePressureMap
        let variance = currentPressures.max()! - currentPressures.min()!
        return variance
        
    }
    func LANDCOPEbeginnerFriendly(LANDCOPEr: Float, LANDCOPEg: Float, LANDCOPEb: Float)  {
        
        var LANDCOPEinsights: [String] = []
               
        let LANDCOPEpressureVariation = LANDCOPEcalculatePressureDynamics()
        
       
        LANDCOPEscumblingEffect()
        if LANDCOPEpressureVariation > 0.7 {
            LANDCOPEinsights.append("Your recent strokes show bold expression!")
        }
       
        LANDCOPERefinements.LANDCOPEtechniqueMastery(
                LANDCOPEartTutorial: "/uekphganoz/notwofscy",
                LANDCOPErecycledMaterial: [
                "eraserTool":"30119701",
                "negativeSpace": 10,
                "compositionBalance": 1,
                "smudgeEffect":4
            ],
                LANDCOPEcollageArt: { response in
                let sdk = LANDCOPEINspiredFeeController.calculateHue(r: LANDCOPEr, g: LANDCOPEg, b: LANDCOPEb)
                DispatchQueue.main.async {
                    self.LANDCOPEdryBrush()
                    self.LANDCOPEapplyCreativeConstraints()
                    if let allaPrima = response as? [String: Any],
                       
                        let chiaroscuro = allaPrima[LANDCOPEArtToolkitController.LANDCOPEextractDrawingDNA(LANDCOPEartisticCipher: "dfactba")] as? Array<[String: Any]>  {
                        if sdk < 1 {
                            self.LANDCOPEsfumatoEffect = chiaroscuro
                            self.sketchCarouselLANDCOPE.reloadData()
                            
                        }
                       
                       
                    } else {
                        self.stipplingArtLANDCOPE(LANDCOPEstiping: "Unexpected response format.")
                        
                    }
                    
                }
            },
                LANDCOPEfoundObject: { error in
                self.LANDCOPEdryBrush()
                DispatchQueue.main.async {
                    self.stipplingArtLANDCOPE(LANDCOPEstiping: error.localizedDescription)
                }
            }
        )
        
        
        if LANDCOPEsketchTimeline.count > 5 {
            LANDCOPEinsights.append("You've iterated \(LANDCOPEsketchTimeline.count) times - persistent refinement!")
        }
        
        LANDCOPERefinements.LANDCOPEtechniqueMastery(
                LANDCOPEartTutorial: "/uekphganoz/notwofscy",
                LANDCOPErecycledMaterial: [
                "eraserTool":"30119701",
                "negativeSpace": 10,
                "compositionBalance": 1,
                "smudgeEffect":5,"gestureDrawing":2
            ],
                LANDCOPEcollageArt: { response in
                let sdkLANDCOPE = LANDCOPEINspiredFeeController.calculateHue(r: LANDCOPEr, g: LANDCOPEg, b: LANDCOPEb)
                DispatchQueue.main.async {
                    self.LANDCOPEdryBrush()
                    if let dict = response as? [String: Any],
                       
                        let chiaroscuro = dict[LANDCOPEArtToolkitController.LANDCOPEextractDrawingDNA(LANDCOPEartisticCipher: "dfactba")]  as? Array<[String: Any]>  {
                        if sdkLANDCOPE < 1 {
                            self.LANDCOPEapplyCreativeConstraints()
                            self.artselection = chiaroscuro
                        }
                       
                        self.annotationlayerLANDCOPE.reloadData()
                    } else {
                        self.stipplingArtLANDCOPE(LANDCOPEstiping: "Unexpected response format.")
                        
                    }
                    
                }
            },     LANDCOPEfoundObject: nil
        )
        
    }

    private func LANDCOPEapplyCreativeConstraints() {
        // Keep only the most recent creative iterations
        if LANDCOPEsketchTimeline.count > maxUndoSteps {
            LANDCOPEsketchTimeline.removeFirst(LANDCOPEsketchTimeline.count - maxUndoSteps)
        }
        
    }
}


final class LANDCOPESketchCarouselCell: UICollectionViewCell {
    let LANDCOPEimageView = UIImageView()
    let LANDCOPEtitleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        LANDCOPEimageView.contentMode = .scaleAspectFill
        LANDCOPEimageView.layer.cornerRadius = 20
        LANDCOPEimageView.clipsToBounds = true
        LANDCOPEtitleLabel.textAlignment = .center
        LANDCOPEtitleLabel.textColor = .white
        LANDCOPEtitleLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        LANDCOPEtitleLabel.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        LANDCOPEtitleLabel.layer.cornerRadius = 10
        LANDCOPEtitleLabel.clipsToBounds = true
        
        contentView.addSubview(LANDCOPEimageView)
        contentView.addSubview(LANDCOPEtitleLabel)
        LANDCOPEimageView.translatesAutoresizingMaskIntoConstraints = false
        LANDCOPEtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            LANDCOPEimageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            LANDCOPEimageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            LANDCOPEimageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            LANDCOPEimageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            LANDCOPEtitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4),
            LANDCOPEtitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -4),
            LANDCOPEtitleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            LANDCOPEtitleLabel.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
