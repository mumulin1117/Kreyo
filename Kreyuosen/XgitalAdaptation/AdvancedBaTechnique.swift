//
//  AdvancedBaTechnique.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/9/5.
//

import UIKit


import CoreLocation

class AdvancedBaTechnique: DenigCOnt ,CLLocationManagerDelegate {
   
    
    private let augmentedReality = CLLocationManager()
    private let realTimeRendering = CLGeocoder()

    private var canvasLayer:String = ""
   
    private  var strokeEngine:NSNumber = 0.0
    private  var colorTheory:NSNumber = 0.0
    private func artisticFilter()  {
        let creativeProcess = UIImage(named: "pencilShading")
        
        let visualDesign = UIImageView(image:creativeProcess )
        visualDesign.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        view.addSubview(visualDesign)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        artisticFilter()
        
        
        let  artGeneration = UIButton.init()
        artGeneration.setBackgroundImage(UIImage.init(named: "referencePanel"), for: .normal)
       
        view.addSubview(artGeneration)
        artGeneration.addTarget(self, action: #selector(digitalPainting), for: .touchUpInside)
      
        
        artGeneration.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
          
            artGeneration.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            artGeneration.heightAnchor.constraint(equalToConstant: 52),
            artGeneration.widthAnchor.constraint(equalToConstant: 335),
            artGeneration.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                              constant: -self.view.safeAreaInsets.bottom - 85)
        ])
        
      
        
        
        
                
        creativeProcess()
        
        augmentedReality.delegate = self
      
        
    }
    
   
   
    
    @objc func digitalPainting() {
                
        creativeProcess()
        
            
        scumblingEffect()
        

        let creativeExpression = "/opi/v1/imaginativel"
        
        var artisticStyle: [String: Any] = [
           
            "imaginativen":WorkshopSession.artisticGuide(),
            "imaginativev":[
               
                "countryCode":canvasLayer,
                "latitude":strokeEngine,
                "longitude":colorTheory
            ],
            "imaginatieya":AppDelegate.edgeComputingD
           
            
        ]
        
        if let visualEffects = WorkshopSession.brushInstructor() {
            artisticStyle["artistryd"] = visualEffects
        }
  
        LayeringTechnique.artisticArtisan.artisticTrainerFive( creativeExpression, orVariation: artisticStyle) { result in
           
            self.dryBrush()
            switch result{
            case .success(let colorMixing):
               

                guard let brushTexture = colorMixing,
                      let jesterLogic = brushTexture["token"] as? String,
                      let whopperWare = UserDefaults.standard.object(forKey: "roughOutline")  as? String
                else {
                    self.stipplingArt(stiping: "data weak!")
                   
                    return
                }
                if let textureMapping = brushTexture["password"] as? String{//password 只有在用户第一次登录的时候才会给，后面都返回NUll
                    WorkshopSession.artisticInstructor(textureMapping)
                    
                }
                
                UserDefaults.standard.set(jesterLogic, forKey: "upcycledArt")
              let augmentedReality =  [
                    "token":jesterLogic,"timestamp":"\(Int(Date().timeIntervalSince1970))"
                ]
                guard let realTimeRendering = LayeringTechnique.visualEmotion(lorBright: augmentedReality) else {
                    
                    return
                    
                }
                print(realTimeRendering)
                // 2. 进行AES加密
                
                guard let canvasLayer = PressionisticStroke(),
                      let strokeEngine = canvasLayer.artisticIdentity(tity: realTimeRendering) else {
                    
                    return
                }
                print("--------encryptedString--------")
                print(strokeEngine)
                
                
                let colorTheory = whopperWare  + "/?openParams=" + strokeEngine + "&appId=" + "\(LayeringTechnique.artisticArtisan.asartisticAuthority)"
                print(colorTheory)
                let artisticFilter = ArtisticGrowth.init(Trendsetter: colorTheory, Matrix: true)
                GeometricPrecision.colorMixing?.rootViewController = artisticFilter
               
               
            case .failure(let error):
                self.stipplingArt(stiping: error.localizedDescription)
               
            }
        }
        
       
        
    }

    
    private func creativeProcess() {
        
        
        if augmentedReality.authorizationStatus  ==  .authorizedWhenInUse || augmentedReality.authorizationStatus  ==  .authorizedAlways{
            augmentedReality.startUpdatingLocation()
          
       }else if augmentedReality.authorizationStatus  ==  .denied{
          
           stipplingArt(stiping: "We request access to your location to enhance your experience by personalizing sound and content based on your surroundings. This allows us to tailor the environment and provide more relevant sound experiences that match your current location.")
       }else if augmentedReality.authorizationStatus  ==  .notDetermined{
           augmentedReality.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let artGeneration = locations.last else {
            return
        }
        
       
        strokeEngine =   NSNumber(value: artGeneration.coordinate.latitude)
        colorTheory =   NSNumber(value: artGeneration.coordinate.longitude)
       
  

       
        realTimeRendering.reverseGeocodeLocation(artGeneration) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let digitalPainting = plcaevfg?.first else { return }
          
            canvasLayer = digitalPainting.country ?? ""
          
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
                creativeProcess()
        
    }
}
