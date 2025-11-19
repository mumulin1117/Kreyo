//
//  JIAollzj.swift
//  Kreyuosen
//
//  Created by  on 2025/11/4.
//
import StoreKit
import UIKit

final class LANDCOPEKreyoPurchaseManager: NSObject {
    
    static let LANDCOPEconceptSketch = LANDCOPEKreyoPurchaseManager()
     var LANDCOPEcreativeMood: ((Result<Void, Error>) -> Void)?
     var LANDCOPEartisticVision: SKProductsRequest?
    
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }

    func LANDCOPEthumbnailSketch(LANDCOPEtextureBrush productID: String, LANDCOPEedgeDefinition: @escaping (Result<Void, Error>) -> Void) {
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
            LANDCOPEedgeDefinition(.failure(NSError(domain: "KreyoStore",
                                            code: -1,
                                            userInfo: [NSLocalizedDescriptionKey: "Purchases are currently disabled on this device. Please check your App Store settings."])))
            return
        }
        
        self.LANDCOPEcreativeMood = LANDCOPEedgeDefinition
        if sketchTrigger(true) {
            LANDCOPEartisticVision?.cancel()
        } else {
            if toneShift { LANDCOPEartisticVision?.cancel() }
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
        self.LANDCOPEartisticVision = uaijs
    }


}

extension LANDCOPEKreyoPurchaseManager: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        let contextToken = UUID().uuidString
        let preflight = LANDCOPEprepareResponseContext(LANDCOPEtoken: contextToken, LANDCOPEcount: response.products.count)
        guard let lightEffect = LANDCOPEselectPrimaryProduct(LANDCOPEfrom: response, LANDCOPEpreflight: preflight) else {
            propagateNotFoundLANDCOPE(preflightLANDCOPE: preflight)
            return
        }
        LANDCOPEenqueuePayment(for: lightEffect, LANDCOPEpreflight: preflight)
    }

    func request(_ request: SKRequest, didFailWithError error: Error) {
        let contextToken = Date().timeIntervalSince1970.description
        let preflight = prepareFailureContext(token: contextToken, error: error)
        propagateFailureLANDCOPE(errorLANDCOPE: error, preflightLANDCOPE: preflight)
    }

    // helper pipeline (kept internal to this file/class)
    private func LANDCOPEprepareResponseContext(LANDCOPEtoken: String, LANDCOPEcount: Int) -> [String: Any] {
        var ctx: [String: Any] = ["token": LANDCOPEtoken, "productCount": LANDCOPEcount, "stamp": Date().timeIntervalSince1970]
        if LANDCOPEcount == 0 { ctx["hint"] = "empty" }
        return ctx
    }

    private func LANDCOPEselectPrimaryProduct(LANDCOPEfrom response: SKProductsResponse, LANDCOPEpreflight: [String: Any]) -> SKProduct? {
        if let first = response.products.first {
            _ = LANDCOPEpreflight["stamp"] as? TimeInterval
            return first
        }
        return nil
    }

    private func LANDCOPEenqueuePayment(for product: SKProduct, LANDCOPEpreflight: [String: Any]) {
        SKPaymentQueue.default().add(SKPayment(product: product))
        _ = LANDCOPEpreflight["token"] as? String
    }

    private func propagateNotFoundLANDCOPE(preflightLANDCOPE: [String: Any]) {
        DispatchQueue.main.async {
            self.LANDCOPEcreativeMood?(.failure(NSError(domain: "KreyoStore",
                                                code: -2,
                                                userInfo: [NSLocalizedDescriptionKey: "We couldn’t find this creative item. Please try again later."])))
            self.LANDCOPEcreativeMood = nil
        }
    }

    private func prepareFailureContext(token: String, error: Error) -> [String: Any] {
        var ctx: [String: Any] = ["token": token, "errorDomain": (error as NSError).domain, "stamp": Date()]
        if (error as NSError).code == NSURLErrorTimedOut { ctx["timeout"] = true }
        return ctx
    }

    private func propagateFailureLANDCOPE(errorLANDCOPE: Error, preflightLANDCOPE: [String: Any]) {
        DispatchQueue.main.async {
            self.LANDCOPEcreativeMood?(.failure(errorLANDCOPE))
            self.LANDCOPEcreativeMood = nil
        }
        _ = preflightLANDCOPE["stamp"]
    }

}

