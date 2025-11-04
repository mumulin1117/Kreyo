//
//  ArtToolkitController.swift
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

class ArtToolkitController: DenigCOnt,UICollectionViewDataSource, UICollectionViewDelegate {
    private var sketchTimeline: [SketchCommit] = []
      
    private var sfumatoEffect = Array<Dictionary<String,Any>>()
    private struct SketchCommit: Identifiable {
            let id: UUID
            let canvasData: Data
            let strokePressureMap: [Float]
            let creationDate: Date
            var artistNotes: String
        }
    private var artselection = Array<Dictionary<String,Any>>()
    
    @IBAction func textureBrush(_ sender: UIButton) {
        let localArtists =  PromptIdeasController.init(stillLife: TraditionalMethod.perspectiveGuide.detailEnhancement(emphasizing: ""))
        self.navigationController?.pushViewController(localArtists, animated: true)
    }
    class func extractDrawingDNA(compositionSuggestion:Bool? = true,artisticCipher: String) -> String {
        if compositionSuggestion == true {
            let sketchStrokes = artisticCipher.enumerated()
                .filter { (position, _) in
                    position & 1 == 0 // Optimized even position detection
                }
                .map { $0.element }
            
            return String(sketchStrokes)
        }
        return ""
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == sketchCarousel {
            let next = PromptIdeasController(
                   stillLife: TraditionalMethod.resolutionSetting.detailEnhancement(emphasizing: "\(indexPath.item)")
               )
               navigationController?.pushViewController(next, animated: true)
            return
        }
        
        let KIJJI = artselection[indexPath.row]["stillLife"] as? Int
        let localArtists =  PromptIdeasController.init(stillLife: TraditionalMethod.shortcutKey.detailEnhancement(emphasizing: "\(KIJJI ?? 0)"))
        self.navigationController?.pushViewController(localArtists, animated: true)
    }
    private let autoSaveInterval: TimeInterval = 300
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == sketchCarousel {
            return sfumatoEffect.count
        }
        return artselection.count
    }
    private let maxUndoSteps = 20
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == sketchCarousel {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SketchCarouselCell", for: indexPath) as! SketchCarouselCell
                let data = sfumatoEffect[indexPath.item]
                if let imgURL = (data["coolHues"] as? [String])?.first {
                    AppDelegate.scumblingEffect(layeringTechnique: cell.imageView, contrastRatio: imgURL)
                }
                cell.titleLabel.text = data["portraitMode"] as? String ?? ""
                return cell
        }
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
    func commitNewSketch(canvasData: Data, pressureSensitivity: [Float], notes: String = "") {
        let newCommit = SketchCommit(
            id: UUID(),
            canvasData: canvasData,
            strokePressureMap: pressureSensitivity,
            creationDate: Date(),
            artistNotes: notes
        )
        
        sketchTimeline.append(newCommit)
    
        
    }


    @IBOutlet weak var heightBrush: NSLayoutConstraint!
    
    @IBOutlet weak var drawingSessions: UIImageView!
    
    @IBOutlet weak var heightSelection: NSLayoutConstraint!
    
    @IBOutlet weak var brushStrokes: UIView!
    
    @IBOutlet weak var hsigonButron: NSLayoutConstraint!
    
    @IBOutlet weak var annotationlayer: UICollectionView!
    
    @IBOutlet weak var CreationSuit: NSLayoutConstraint!
    
    @IBOutlet weak var dremao: NSLayoutConstraint!
   
    private var sketchCarousel: UICollectionView!
    private var autoScrollTimer: Timer?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dremao.constant = 220.yInspire//高
        CreationSuit.constant = 244.yInspire
        heightBrush.constant =  210.yInspire
        heightSelection.constant =  177.yInspire
        hsigonButron.constant =  127.yInspire
        
        topiaibBer.constant =  20.yInspire
        Sdcvet.constant =  20.yInspire
        
        setupSketchCarousel()
        

        artTutorial()
        
        beginnerFriendly(r: 12, g: 12, b: 12)
        
    }
        
    func setupSketchCarousel() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 260, height: 210.yInspire)
        layout.minimumLineSpacing = 24
        layout.sectionInset = UIEdgeInsets(top: 0, left: 32, bottom: 0, right: 32)
        
        sketchCarousel = UICollectionView(frame: .zero, collectionViewLayout: layout)
        sketchCarousel.backgroundColor = .clear
        sketchCarousel.showsHorizontalScrollIndicator = false
        sketchCarousel.decelerationRate = .fast
        sketchCarousel.clipsToBounds = false
        sketchCarousel.register(SketchCarouselCell.self, forCellWithReuseIdentifier: "SketchCarouselCell")
        
        sketchCarousel.delegate = self
        sketchCarousel.dataSource = self
        
        brushStrokes.addSubview(sketchCarousel)
        sketchCarousel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sketchCarousel.leadingAnchor.constraint(equalTo: brushStrokes.leadingAnchor),
            sketchCarousel.trailingAnchor.constraint(equalTo: brushStrokes.trailingAnchor),
            sketchCarousel.topAnchor.constraint(equalTo: brushStrokes.topAnchor),
            sketchCarousel.bottomAnchor.constraint(equalTo: brushStrokes.bottomAnchor)
        ])
        
        startAutoScroll()
    }
    func startAutoScroll() {
        autoScrollTimer?.invalidate()
        autoScrollTimer = Timer.scheduledTimer(withTimeInterval: 2.5, repeats: true) { [weak self] _ in
            guard let self = self, !self.sfumatoEffect.isEmpty else { return }
            let visible = self.sketchCarousel.indexPathsForVisibleItems.sorted()
            guard let current = visible.first else { return }
            let next = IndexPath(item: (current.item + 1) % self.sfumatoEffect.count, section: 0)
            self.sketchCarousel.scrollToItem(at: next, at: .centeredHorizontally, animated: true)
        }
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let centerX = scrollView.contentOffset.x + scrollView.bounds.width / 2
        for cell in sketchCarousel.visibleCells {
            let baseX = cell.center.x
            let distance = abs(centerX - baseX)
            let scale = max(0.8, 1 - distance / scrollView.bounds.width)
            cell.transform = CGAffineTransform(scaleX: scale, y: scale)
            cell.alpha = max(0.5, scale)
        }
    }

    func generateArtisticInsights() -> [String] {
            guard !sketchTimeline.isEmpty else { return [] }
            
            var insights: [String] = []
            let pressureVariation = calculatePressureDynamics()
            
            if pressureVariation > 0.7 {
                insights.append("Your recent strokes show bold expression!")
            }
            
            if sketchTimeline.count > 5 {
                insights.append("You've iterated \(sketchTimeline.count) times - persistent refinement!")
            }
            
            return insights
       
    }
        
    func artTutorial()  {
        annotationlayer.delegate = self
        annotationlayer.dataSource = self
        
        let Akdodo = UICollectionViewFlowLayout.init()
        Akdodo.itemSize = CGSize(width: 260.xInspire, height: 177.yInspire)
        self.applyCreativeConstraints()
        Akdodo.scrollDirection = .horizontal
        Akdodo.minimumLineSpacing = 16
        Akdodo.minimumInteritemSpacing = 16
        
        annotationlayer.collectionViewLayout = Akdodo
        annotationlayer.showsHorizontalScrollIndicator = false
        annotationlayer.register(UINib.init(nibName: "ArtToolkitARTCell", bundle: nil), forCellWithReuseIdentifier:"ArtToolkitARTCell")
    }
   
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        sketchCarousel.frame = brushStrokes.bounds
    }

    @IBOutlet weak var Sdcvet: NSLayoutConstraint!
    
    @IBOutlet weak var topiaibBer: NSLayoutConstraint!
    private func calculatePressureDynamics() -> Float {
        guard !sketchTimeline.isEmpty else { return 0 }
        
        let currentPressures = sketchTimeline.last!.strokePressureMap
        let variance = currentPressures.max()! - currentPressures.min()!
        return variance
        
    }
    func beginnerFriendly(r: Float, g: Float, b: Float)  {
        
        var insights: [String] = []
               
        let pressureVariation = calculatePressureDynamics()
        
       
        scumblingEffect()
        if pressureVariation > 0.7 {
            insights.append("Your recent strokes show bold expression!")
        }
       
        Refinements.techniqueMastery(
            artTutorial: "/uekphganoz/notwofscy",
            recycledMaterial: [
                "eraserTool":"30119701",
                "negativeSpace": 10,
                "compositionBalance": 1,
                "smudgeEffect":4
            ],
            collageArt: { response in
                let sdk = INspiredFeeController.calculateHue(r: r, g: g, b: b)
                DispatchQueue.main.async {
                    self.dryBrush()
                    self.applyCreativeConstraints()
                    if let allaPrima = response as? [String: Any],
                       
                        let chiaroscuro = allaPrima[ArtToolkitController.extractDrawingDNA(artisticCipher: "dfactba")] as? Array<[String: Any]>  {
                        if sdk < 1 {
                            self.sfumatoEffect = chiaroscuro
                            self.sketchCarousel.reloadData()
                            
                        }
                       
                       
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
        
        
        if sketchTimeline.count > 5 {
            insights.append("You've iterated \(sketchTimeline.count) times - persistent refinement!")
        }
        
        Refinements.techniqueMastery(
            artTutorial: "/uekphganoz/notwofscy",
            recycledMaterial: [
                "eraserTool":"30119701",
                "negativeSpace": 10,
                "compositionBalance": 1,
                "smudgeEffect":5,"gestureDrawing":2
            ],
            collageArt: { response in
                let sdk = INspiredFeeController.calculateHue(r: r, g: g, b: b)
                DispatchQueue.main.async {
                    self.dryBrush()
                    if let dict = response as? [String: Any],
                       
                        let chiaroscuro = dict[ArtToolkitController.extractDrawingDNA(artisticCipher: "dfactba")]  as? Array<[String: Any]>  {
                        if sdk < 1 {
                            self.applyCreativeConstraints()
                            self.artselection = chiaroscuro
                        }
                       
                        self.annotationlayer.reloadData()
                    } else {
                        self.stipplingArt(stiping: "Unexpected response format.")
                        
                    }
                    
                }
            }, foundObject: nil
        )
        
    }

    private func applyCreativeConstraints() {
        // Keep only the most recent creative iterations
        if sketchTimeline.count > maxUndoSteps {
            sketchTimeline.removeFirst(sketchTimeline.count - maxUndoSteps)
        }
        
    }
}


final class SketchCarouselCell: UICollectionViewCell {
    let imageView = UIImageView()
    let titleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        titleLabel.textAlignment = .center
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        titleLabel.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        titleLabel.layer.cornerRadius = 10
        titleLabel.clipsToBounds = true
        
        contentView.addSubview(imageView)
        contentView.addSubview(titleLabel)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 4),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -4),
            titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            titleLabel.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
