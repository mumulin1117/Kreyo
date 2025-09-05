//
//  ArtisticColor.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/23.
//
import CoreGraphics
import UIKit
import Foundation
struct ArtisticColor {
    static var localArtists:String?{
        get{
            return UserDefaults.standard.object(forKey: "localArtists") as? String
        }set{
            UserDefaults.standard.set(newValue, forKey: "localArtists")
            
        }
        
    }
    
    let rgb: (r: Float, g: Float, b: Float)
    var frequency: Int = 1
    var harmonyScore: Float = 0
}


struct BrushPigment: Identifiable {
    let id = UUID()
    var hue: Float       // 0-360 degrees
    var saturation: Float // 0-1
    var luminance: Float // 0-1
    var usageCount: Int = 0
    
    func toDisplayColor() -> (r: Float, g: Float, b: Float) {
        // HSL to RGB conversion would be implemented here
        return (hue/360, saturation, luminance)
    }
    
    
}
