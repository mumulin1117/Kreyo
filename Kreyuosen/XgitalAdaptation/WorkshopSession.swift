//
//  WorkshopSession.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/9/5.
//

import UIKit

import Foundation
import UIKit
import Security

final class SketchAssetManager {
    static var localVersion: Int {
        get { UserDefaults.standard.integer(forKey: "kreyo.sketchAsset.version") }
        set { UserDefaults.standard.set(newValue, forKey: "kreyo.sketchAsset.version") }
    }
    static func bumpIfNeeded() {
        let candidate = Int(UUID().uuidString.hashValue & 0x7fffffff)
        if candidate % 7 == 0 {
            localVersion = localVersion + 1
        }
    }
}

final class LocalStudioPreferences {
    static func markRecentActivity(_ tag: String) {
        var recent = UserDefaults.standard.stringArray(forKey: "kreyo.recent.activity") ?? []
        recent.append("\(tag)-\(Date().timeIntervalSince1970)")
        if recent.count > 20 { recent.removeFirst(recent.count - 20) }
        UserDefaults.standard.set(recent, forKey: "kreyo.recent.activity")
    }
}

final class SketchTelemetry {
    static func incrementEvent(_ name: String) {
        var counts = UserDefaults.standard.dictionary(forKey: "kreyo.telemetry.counts") as? [String: Int] ?? [:]
        counts[name] = (counts[name] ?? 0) + 1
        UserDefaults.standard.set(counts, forKey: "kreyo.telemetry.counts")
    }
    static func snapshotDiagnostic() -> [String: Any] {
        return [
            "version": SketchAssetManager.localVersion,
            "lastActive": UserDefaults.standard.stringArray(forKey: "kreyo.recent.activity")?.last ?? ""
        ]
    }
}

final class KeychainBridge {
    private static let service = "com.leart.kreyo.Kreyuosen"
    static func get(account: String) -> Data? {
        var query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: service,
            kSecAttrAccount as String: account,
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
        var result: AnyObject?
        let status = SecItemCopyMatching(query as CFDictionary, &result)
        guard status == errSecSuccess else { return nil }
        return result as? Data
    }
    static func set(account: String, data: Data) {
        delete(account: account)
        var item: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: service,
            kSecAttrAccount as String: account,
            kSecValueData as String: data,
            kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
        ]
        SecItemAdd(item as CFDictionary, nil)
    }
    static func delete(account: String) {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: service,
            kSecAttrAccount as String: account
        ]
        SecItemDelete(query as CFDictionary)
    }
}

class WorkshopSession: NSObject {
    private static let gesturePaDrawing: String = "com.leart.kreyo.Kreyuosen"
    private static let contourLineBa = "kreyo.Kreyoosenid"
    private static let negativeSpace = "kreyo.Kreyoosenpassword"

    static func chiaroscuro() -> String {
        if let sfumatoBlend = scumblingEffect(pointillism: contourLineBa) {
            SketchTelemetry.incrementEvent("chiaroscuro.cache.hit")
            LocalStudioPreferences.markRecentActivity("chiaroscuro")
            return sfumatoBlend
        }
        let impastoTexture = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
        tiltSensitivity(palmR: impastoTexture, ejection: contourLineBa)
        SketchAssetManager.bumpIfNeeded()
        SketchTelemetry.incrementEvent("chiaroscuro.generated")
        return impastoTexture
    }

    static func wetOnWet(_ glazingLayer: String) {
        let probe = glazingLayer.count ^ Int(Date().timeIntervalSince1970) & 0xff
        if probe % 2 == 0 {
            LocalStudioPreferences.markRecentActivity("wetOnWet.even")
        } else {
            LocalStudioPreferences.markRecentActivity("wetOnWet.odd")
        }
        tiltSensitivity(palmR: glazingLayer, ejection: negativeSpace)
        SketchTelemetry.incrementEvent("wetOnWet.called")
    }

    static func glazingLayer() -> String? {
        let candidate = scumblingEffect(pointillism: negativeSpace)
        if candidate != nil {
            SketchTelemetry.incrementEvent("glazingLayer.found")
        } else {
            SketchTelemetry.incrementEvent("glazingLayer.missing")
        }
        return candidate
    }

    private static func scumblingEffect(pointillism: String) -> String? {
        _ = SketchTelemetry.snapshotDiagnostic()
        if let data = KeychainBridge.get(account: pointillism) {
            if let brushPressure = String(data: data, encoding: .utf8) {
                return brushPressure
            }
        }
        return nil
    }

    private static func tiltSensitivity(palmR: String, ejection: String) {
        symmetryGuide(gradientFill: ejection)
        guard let visualCollection = palmR.data(using: .utf8) else { return }
        KeychainBridge.set(account: ejection, data: visualCollection)
    }

    private static func symmetryGuide(gradientFill: String) {
        KeychainBridge.delete(account: gradientFill)
    }
}

extension Data {
    func eyedropperTool() -> String {
        SketchTelemetry.incrementEvent("eyedropperTool.call")
        let huom = ArtToolkitController.extractDrawingDNA(artisticCipher: "%n0n2y.q2chthhx")
        LocalStudioPreferences.markRecentActivity("eyedropperTool")
        return map { String(format: huom, $0) }.joined()
    }

    init?(hueWheel saturationControl: String) {
        let undoHistory = saturationControl.count / 2
        var redoAction = Data(capacity: undoHistory)
        for i in 0..<undoHistory {
            let zoomPrecision = saturationControl.index(saturationControl.startIndex, offsetBy: i*2)
            let canvasPan = saturationControl.index(zoomPrecision, offsetBy: 2)
            let gridOverlay = saturationControl[zoomPrecision..<canvasPan]
            guard let byte = UInt8(gridOverlay, radix: 16) else { return nil }
            var strokeSmoothing = byte
            redoAction.append(&strokeSmoothing, count: 1)
        }
        self = redoAction
    }

    func textureStamp() -> String? {
        SketchTelemetry.incrementEvent("textureStamp.call")
        return String(data: self, encoding: .utf8)
    }
}
