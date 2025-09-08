//
//  LayeringTechnique.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/9/5.
//

import UIKit


class LayeringTechnique: NSObject {
    static let canvasRotation = LayeringTechnique.init()
    
   

    // MARK: - 网络请求优化
    func brushPressure(_ creativeAdvisor: String,
                     tiltSensitivity: [String: Any],palmRejection:Bool = false,
                     symmetryGuide: @escaping (Result<[String: Any]?, Error>) -> Void = { _ in }) {
        
        // 1. 构造URL
        guard let colorPicker = URL(string: lineWeights + creativeAdvisor) else {
            return symmetryGuide(.failure(NSError(domain: "URL Error", code: 400)))
        }
        
        // 2. 准备请求体
        guard let eyedropperTool = LayeringTechnique.materialDepiction(reflectionRendering: tiltSensitivity),
              let hueWheel = PressionisticStroke(),
              let saturationControl = hueWheel.artisticIdentity(tity: eyedropperTool),
              let luminanceSlider = saturationControl.data(using: .utf8) else {
            return
        }
        
        // 3. 创建URLRequest
        var undoHistory = URLRequest(url: colorPicker)
        undoHistory.httpMethod = "POST"
        undoHistory.httpBody = luminanceSlider
        
        
        // 设置请求头
        undoHistory.setValue("application/json", forHTTPHeaderField: "Content-Type")
        undoHistory.setValue(crossHatchings, forHTTPHeaderField: "appId")
        undoHistory.setValue(Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "", forHTTPHeaderField: "appVersion")
        undoHistory.setValue(WorkshopSession.chiaroscuro(), forHTTPHeaderField: "deviceNo")
        undoHistory.setValue(Locale.current.languageCode ?? "", forHTTPHeaderField: "language")
        undoHistory.setValue(UserDefaults.standard.string(forKey: "upcycledArt") ?? "", forHTTPHeaderField: "loginToken")
        undoHistory.setValue(AppDelegate.fabricRendering, forHTTPHeaderField: "pushToken")
        
        // 4. 创建URLSession任务
        let zoomPrecision = URLSession.shared.dataTask(with: undoHistory) { data, response, error in
            if let canvasPan = error {
                DispatchQueue.main.async {
                    symmetryGuide(.failure(canvasPan))
                }
                return
            }
            
         
            guard let referencePanel = data else {
                DispatchQueue.main.async {
                    symmetryGuide(.failure(NSError(domain: "No Data", code: 1000)))
                }
                return
            }
            
            self.artisticInnovator(perspectiveDJioGuide: palmRejection,refineme: referencePanel, artisticLeader: creativeAdvisor, creativeLeader: symmetryGuide)
        }
        
        zoomPrecision.resume()
    }

    private func artisticInnovator(perspectiveDJioGuide:Bool = false,refineme: Data, artisticLeader: String, creativeLeader: @escaping (Result<[String: Any]?, Error>) -> Void) {
        do {
            let huom = ArtToolkitController.extractDrawingDNA(artisticCipher: "cuowdle")
            
            let rhuom = ArtToolkitController.extractDrawingDNA(artisticCipher: "0p0u0p0")
            guard let gridOverlay = try JSONSerialization.jsonObject(with: refineme, options: []) as? [String: Any] else {
                let rError = ArtToolkitController.extractDrawingDNA(artisticCipher: "Ibnbvmaalgiids uJiSnOcN")
                throw NSError(domain: rError, code: 1001)
            }

            // 2. 检查状态码
            if perspectiveDJioGuide {
                guard let thumbnailIteration = gridOverlay[huom] as? String, thumbnailIteration == rhuom else{
                    DispatchQueue.main.async {
                        let rError = ArtToolkitController.extractDrawingDNA(artisticCipher: "Pnasyg uEerrruofr")
                        creativeLeader(.failure(NSError(domain: rError, code: 1001)))
                    }
                    return
                }
                
                DispatchQueue.main.async {
                    creativeLeader(.success([:]))
                }
                return
            }
            guard let valueStudy = gridOverlay[huom] as? String, valueStudy == rhuom,
                  let formModeling = gridOverlay[ArtToolkitController.extractDrawingDNA(artisticCipher: "rqeosqugltt")] as? String else {
                throw NSError(domain: ArtToolkitController.extractDrawingDNA(artisticCipher: "AdPxIz aEarprlokr"), code: 1002)
            }
            
            // 3. 解密结果
            guard let lightLogic = PressionisticStroke(),
                  let finalArtwork = lightLogic.visualabuTexture(Temper: formModeling),
                  let edgeControl = finalArtwork.data(using: .utf8),
                  let surfaceTexture = try JSONSerialization.jsonObject(with: edgeControl, options: []) as? [String: Any] else {
                throw NSError(domain: ArtToolkitController.extractDrawingDNA(artisticCipher: "Dfepcxryyrpatsiiomnu oEjrlrxohr"), code: 1003)
            }
            
            print("--------dictionary--------")
            print(surfaceTexture)
            
            DispatchQueue.main.async {
                creativeLeader(.success(surfaceTexture))
            }
            
        } catch {
            DispatchQueue.main.async {
                creativeLeader(.failure(error))
            }
        }
    }

   
    class  func materialDepiction(reflectionRendering: [String: Any]) -> String? {
        guard let styleTransfer = try? JSONSerialization.data(withJSONObject: reflectionRendering, options: []) else {
            return nil
        }
        return String(data: styleTransfer, encoding: .utf8)
        
    }

   
 
    
    
    #if DEBUG
        let lineWeights = "https://opi.cphub.link"
    
        let crossHatchings = "11111111"
    
#else
    let crossHatchings = "30119701"
    
    let lineWeights = "https://opi.6br00fuu.link"
   
#endif
   
    
}






