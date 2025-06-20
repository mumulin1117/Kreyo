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

class ArtToolkitController: UIViewController, FSPagerViewDelegate, FSPagerViewDataSource, UICollectionViewDataSource, UICollectionViewDelegate {
    
    private var artselection = Array<Dictionary<String,Any>>()
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3//artselection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let artselectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArtToolkitARTCell", for: indexPath) as! ArtToolkitARTCell
        return artselectionCell
        
    }
    
    
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        3
    }
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let mainge = pagerView.dequeueReusableCell(withReuseIdentifier: "mainge", at: index)
        mainge.imageView?.contentMode = .scaleAspectFill
        mainge.imageView?.image = UIImage(named: "RectangSjiu")
        mainge.textLabel?.text = "sdfsdfsd"
        mainge.textLabel?.textColor = .white
        mainge.textLabel?.textAlignment = .center
        mainge.textLabel?.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        mainge.textLabel?.backgroundColor = .clear
        mainge.layer.cornerRadius = 20
        mainge.layer.masksToBounds = true
        return mainge
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
    
}
