
//
//  InAppPurchases.swift
//  InAppPurchases-Generic
//
//  Created by uMmaRr on 11/01/2022.
//



import Foundation
import StoreKit

//static methods
public class InAppPurchases {
    
    public static func requestProducts(_ products: Set<String>, _ completion: @escaping (([SKProduct]?) -> ())) {
        IAP.requestProducts(products) { (response, error) in
            completion(response?.products)
        }
    }
    
    public static func purchaseProduct(productIdentifier: String,_ completion: @escaping ((Bool) -> ())) {
        IAP.purchaseProduct(productIdentifier, handler: { (productIdentifier, error) in
                completion(error == nil)
        })
    }
    
    public static func restorePurchase(_ completion: @escaping ((Bool) -> ())) {
        IAP.restorePurchases { (products, error) in
            completion(!products.isEmpty)
        }
    }
    
    public static func isProductPurchased(_ productIdentifier: String, appSharedSecret: String, _ completion: @escaping ((Bool?, Error?) -> ())) {
        IAP.validateReceipt(appSharedSecret) { (statusCode, products, json) in
                guard let validDate = products?[productIdentifier] else {
                    completion(false, nil)
                    return
                }
            completion(validDate.timeIntervalSince1970 > Date().timeIntervalSince1970, nil)
        }
    }
    
    public static func manageSubscriptionsOnAppStore() {
        if let url = URL(string: "https://apps.apple.com/account/subscriptions"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
}
