//
//  SketchGalleryController.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/20.
//

import UIKit

class SketchGalleryController: UIViewController {

    @IBOutlet weak var perspectiveGuide: UIImageView!
    
    
    @IBOutlet weak var colorPicker: UILabel!
    
    
    @IBOutlet weak var rotateCanvas: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        perspectiveGuide.layer.cornerRadius = 40
        perspectiveGuide.layer.masksToBounds = true
        perspectiveGuide.layer.borderWidth = 1
        perspectiveGuide.layer.borderColor = UIColor.white.cgColor
        
        
    }
    
    @IBAction func eyedropperTool(_ sender: UIButton) {
    }
    
    
    @IBAction func saturationControl(_ sender: UIButton) {
    }
    
    @IBAction func symmetryMode(_ sender: UIButton) {
    }
    
    @IBAction func promptIdeas(_ sender: UIButton) {
    }
}
