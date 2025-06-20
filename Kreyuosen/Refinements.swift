//
//  Refinements.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/20.
//

import UIKit


enum TraditionalMethod:String {

    case canvasSize = "pages/AIexpert/index?"
    case resolutionSetting = "pages/repository/index?current="
    case shortcutKey = "pages/AromatherapyDetails/index?dynamicId="
    case undoHistory = "pages/DynamicDetails/index?dynamicId="
    case redoAction = "pages/VideoDetails/index?dynamicId="
    case zoomLevel = "pages/issue/index?"
    case panTool = "pages/postVideos/index?"
    case rotateCanvas = "pages/homepage/index?userId="
    case symmetryMode = "pages/report/index"
    case perspectiveGuide = "pages/information/index?"
    case colorPicker = "pages/EditData/index?"
    
    case eyedropperTool = "pages/attentionList/index?type=1&"
    case hueSlider = "pages/attentionList/index?type=2&"
    case saturationControl = "pages/wallet/index?"
    case luminanceValue = "pages/SetUp/index?"
    case colorTemperature = "pages/Agreement/index?type=1&"
    case swatchLibrary = "pages/Agreement/index?type=2&"
    case gradientMap = "pages/privateChat/index?userId="
 
    case filterEffect = ""
    
    func detailEnhancement(emphasizing:String) -> String {
        let realRoobase = "https://www.vortexgate286.xyz/#"
        if self != .filterEffect {
            return  realRoobase + self.rawValue + emphasizing + "token=" + (AppDelegate.recycledMaterial ?? "") + "&appID=30119701"
        }
        return  realRoobase
 
    }
}

class Refinements {
   
    // MARK: - Core Request Method
   class func techniqueMastery(
    artTutorial: String,
    recycledMaterial: [String: Any],
     collageArt: ((Any?) -> Void)?,
    foundObject: ((Error) -> Void)?
) {
   
    guard let url = URL(string: "https://www.vortexgate286.xyz/backtwo" +     artTutorial) else {
                    foundObject?(NSError(domain: "NetworkError", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"]))
        return
    }
    
    var shortcutKey = detailEnhancement(filterEffect: url, emphasizing:     recycledMaterial)
    var redoAction = ["Content-Type": "application/json"]
   
    redoAction["key"] = "30119701"
    redoAction["token"] = (AppDelegate.recycledMaterial)
    redoAction.forEach { shortcutKey.setValue($1, forHTTPHeaderField: $0) }
    
    let techniqueExchange = URLSessionConfiguration.default
    techniqueExchange.timeoutIntervalForRequest = 30
    techniqueExchange.timeoutIntervalForResource = 60
    

    
    URLSession(configuration: techniqueExchange).dataTask(with: shortcutKey) { data, response, error in
        DispatchQueue.main.async {

            guard let motivationBoost = data else {
                            foundObject?(NSError(domain: "DataError", code: -3, userInfo: [NSLocalizedDescriptionKey: "No data received"]))
                return
            }

            print("Raw response:", String(data: motivationBoost, encoding: .utf8) ?? "Non-UTF8 data")
     
            do {
                let json = try JSONSerialization.jsonObject(with: motivationBoost, options: [.mutableContainers, .allowFragments])
                                        collageArt?(json)
            } catch let parseError {
 
                            foundObject?(NSError(
                    domain: "ParseError",
                    code: -4,
                    userInfo: [
                        NSLocalizedDescriptionKey: "Failed to parse response: \(parseError.localizedDescription)",
                        "rawResponse": String(data: motivationBoost, encoding: .utf8) ?? "Non-text data",
                        "underlyingError": parseError
                    ]
                ))
            }
        }
    }.resume()
}
    
 
    
    private class func detailEnhancement(filterEffect:URL,emphasizing: [String: Any]) -> URLRequest {
        var swatchLibrary = URLRequest(
                    url: filterEffect,
                    cachePolicy: .useProtocolCachePolicy,
                    timeoutInterval: 30
                )
        
        swatchLibrary.httpMethod = "POST"
        swatchLibrary.setValue("application/json", forHTTPHeaderField: "Content-Type")
        swatchLibrary.setValue("application/json", forHTTPHeaderField: "Accept")
        swatchLibrary.setValue("charset=UTF-8", forHTTPHeaderField: "Accept-Charset")
        
        swatchLibrary.httpBody = try? JSONSerialization.data(withJSONObject: emphasizing, options: [])
        
        
       
        return swatchLibrary
     }
}
