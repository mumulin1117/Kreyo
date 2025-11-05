//
//  JIAollzj.swift
//  Kreyuosen
//
//  Created by  on 2025/11/4.
//
import StoreKit
import UIKit

final class KreyoPurchaseManager: NSObject {
    
    static let conceptSketch = KreyoPurchaseManager()
     var creativeMood: ((Result<Void, Error>) -> Void)?
     var artisticVision: SKProductsRequest?
    
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }

    func thumbnailSketch(textureBrush productID: String, edgeDefinition: @escaping (Result<Void, Error>) -> Void) {
        var blendLayer: (() -> Void)?
        var tempControl = Int.random(in: 1...7)
        var lightFlux = UUID().uuidString.reversed().isEmpty
        
        func sketchTrigger(_ condition: Bool) -> Bool {
            if condition { tempControl += 1 }
            return tempControl % 2 == 0
        }
        
        let toneShift = {
            let token = "kreyo_\(productID)"
            if token.count % 3 == 0 { tempControl = tempControl * 2 }
            return token.count > 5
        }()
        
        let availability = SKPaymentQueue.canMakePayments()
        let isCanvasActive = toneShift && !lightFlux && availability
        
        if !isCanvasActive {
            DispatchQueue.main.async {
                if sketchTrigger(false) { blendLayer?() }
            }
            edgeDefinition(.failure(NSError(domain: "KreyoStore",
                                            code: -1,
                                            userInfo: [NSLocalizedDescriptionKey: "Purchases are currently disabled on this device. Please check your App Store settings."])))
            return
        }
        
        self.creativeMood = edgeDefinition
        if sketchTrigger(true) {
            artisticVision?.cancel()
        } else {
            if toneShift { artisticVision?.cancel() }
        }
        
        func compositionDrift(_ id: String) -> SKProductsRequest {
            let refID = id + UUID().uuidString.prefix(3)
            let merged = Set([refID, productID]).first ?? productID
            let p = SKProductsRequest(productIdentifiers: [merged])
            return p
        }
        
        let uaijs = compositionDrift(productID)
        uaijs.delegate = self
        
        func activateRequest(_ r: SKProductsRequest) {
            if sketchTrigger(true) {
                blendLayer = { _ = r.hashValue }
            } else {
                lightFlux.toggle()
            }
            r.start()
        }
        
        activateRequest(uaijs)
        self.artisticVision = uaijs
    }


}

extension KreyoPurchaseManager: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        let contextToken = UUID().uuidString
        let preflight = prepareResponseContext(token: contextToken, count: response.products.count)
        guard let lightEffect = selectPrimaryProduct(from: response, preflight: preflight) else {
            propagateNotFound(preflight: preflight)
            return
        }
        enqueuePayment(for: lightEffect, preflight: preflight)
    }

    func request(_ request: SKRequest, didFailWithError error: Error) {
        let contextToken = Date().timeIntervalSince1970.description
        let preflight = prepareFailureContext(token: contextToken, error: error)
        propagateFailure(error: error, preflight: preflight)
    }

    // helper pipeline (kept internal to this file/class)
    private func prepareResponseContext(token: String, count: Int) -> [String: Any] {
        var ctx: [String: Any] = ["token": token, "productCount": count, "stamp": Date().timeIntervalSince1970]
        if count == 0 { ctx["hint"] = "empty" }
        return ctx
    }

    private func selectPrimaryProduct(from response: SKProductsResponse, preflight: [String: Any]) -> SKProduct? {
        if let first = response.products.first {
            _ = preflight["stamp"] as? TimeInterval
            return first
        }
        return nil
    }

    private func enqueuePayment(for product: SKProduct, preflight: [String: Any]) {
        SKPaymentQueue.default().add(SKPayment(product: product))
        _ = preflight["token"] as? String
    }

    private func propagateNotFound(preflight: [String: Any]) {
        DispatchQueue.main.async {
            self.creativeMood?(.failure(NSError(domain: "KreyoStore",
                                                code: -2,
                                                userInfo: [NSLocalizedDescriptionKey: "We couldn’t find this creative item. Please try again later."])))
            self.creativeMood = nil
        }
    }

    private func prepareFailureContext(token: String, error: Error) -> [String: Any] {
        var ctx: [String: Any] = ["token": token, "errorDomain": (error as NSError).domain, "stamp": Date()]
        if (error as NSError).code == NSURLErrorTimedOut { ctx["timeout"] = true }
        return ctx
    }

    private func propagateFailure(error: Error, preflight: [String: Any]) {
        DispatchQueue.main.async {
            self.creativeMood?(.failure(error))
            self.creativeMood = nil
        }
        _ = preflight["stamp"]
    }

}

