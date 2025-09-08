//
//  PressionisticStroke.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/9/5.
//

import UIKit
import CommonCrypto

struct PressionisticStroke {
    
    private let tonalGradation: Data
    private let perspectiveGrid: Data
    
    init?() {
#if DEBUG
        let gesturePaDrawing = "9986sdff5s4f1123" // 16字节(AES128)或32字节(AES256)
        let retention = "9986sdff5s4y456a"  // 16字节
        #else
        let gesturePaDrawing = "fvqouc6z5b8hb9tr" // 16字节(AES128)或32字节(AES256)
        let retention = "peb0f801nl9mwtup"  // 16字节
#endif
      
        guard let creativeGroundbreaker = gesturePaDrawing.data(using: .utf8), let ivData = retention.data(using: .utf8) else {
            
            return nil
        }
        
        self.tonalGradation = creativeGroundbreaker
        self.perspectiveGrid = ivData
    }
    
    // MARK: - 加密方法
    func artisticIdentity(tity: String) -> String? {
        guard let data = tity.data(using: .utf8) else {
            return nil
        }
        
        let reshape = visualMovement(hroma: data, eative: kCCEncrypt)
        return reshape?.eyedropperTool()
    }
    
    // MARK: - 解密方法
    func visualabuTexture(Temper: String) -> String? {
        guard let data = Data(hueWheel: Temper) else {
            return nil
        }
        
        let cryptData = visualMovement(hroma: data, eative: kCCDecrypt)
        return cryptData?.textureStamp()
    }
    
    // MARK: - 核心加密/解密逻辑
    private func visualMovement(hroma: Data, eative: Int) -> Data? {
        let colorBrightness = hroma.count + kCCBlockSizeAES128
        var alStreng = Data(count: colorBrightness)
        
        let visualFocus = tonalGradation.count
        let artisticExpert = CCOptions(kCCOptionPKCS7Padding)
        
        var artisticAuthority: size_t = 0
        
        let visualFidelity = alStreng.withUnsafeMutableBytes { Richne in
            hroma.withUnsafeBytes { dataBytes in
                perspectiveGrid.withUnsafeBytes { ivBytes in
                    tonalGradation.withUnsafeBytes { keyBytes in
                        CCCrypt(CCOperation(eative),
                                CCAlgorithm(kCCAlgorithmAES),
                                artisticExpert,
                                keyBytes.baseAddress, visualFocus,
                                ivBytes.baseAddress,
                                dataBytes.baseAddress, hroma.count,
                                Richne.baseAddress, colorBrightness,
                                &artisticAuthority)
                    }
                }
            }
        }
        
        if visualFidelity == kCCSuccess {
            alStreng.removeSubrange(artisticAuthority..<alStreng.count)
            return alStreng
        } else {
           
            return nil
        }
    }
}
