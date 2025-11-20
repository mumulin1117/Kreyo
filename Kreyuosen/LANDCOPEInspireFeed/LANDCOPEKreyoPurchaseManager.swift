//
//  JIAollzj.swift
//  Kreyuosen
//
//  Created by  on 2025/11/4.
//
import StoreKit
import UIKit

final class LANDCOPEKreyoPurchaseManager: NSObject {
    var LANDCOPEformContrast: String? 
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

    func LANDCOPEthumbnailSketch(LANDCOPEtextureBrush productID: String,
                                 LANDCOPEedgeDefinition: @escaping (Result<Void, Error>) -> Void) {

        guard SKPaymentQueue.canMakePayments() else {
            LANDCOPEedgeDefinition(.failure(
                NSError(domain: "KreyoStore",
                        code: -1,
                        userInfo: [NSLocalizedDescriptionKey:
                                    LANDCOPEArtToolkitController.LANDCOPEextractDrawingDNA(LANDCOPEartisticCipher: "Pxubrpcohwamsjejsw gayrsew bcouzrtrzeqnpttluyd jdyiksvatbalwevdx uornt ztjhxinsz idqerveiwcpex.")]))
            )
            return
        }

        self.LANDCOPEcreativeMood = LANDCOPEedgeDefinition

        // 永远使用真实 ID
        let request = SKProductsRequest(productIdentifiers: [productID])
        request.delegate = self
        request.start()

        // 保持引用，避免被释放
        self.LANDCOPEartisticVision = request
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
                                                userInfo: [NSLocalizedDescriptionKey: LANDCOPEArtToolkitController.LANDCOPEextractDrawingDNA(LANDCOPEartisticCipher: "Wqef ncioxumlldanq'bth kfwiangdk wthhwijsd sistqeomo.h ePtlqeeazsgeu ptsrwyw oamgmakiwnm xlpartzeprw.")])))
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

