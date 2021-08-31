//
//  PriceModel.swift
//  PriceModel
//
//  Created by Evgeniy Goncharov on 29.08.2021.
//

import Foundation
import UIKit

struct Price: Codable {
    var symbol: String
    var price: String
}

// MARK: Methods

/// Get curret price coint from Binance API
/// - Parameter symbol: Example getPriceCoin(symbol: "BTCUSDT")
/// - Returns: String round 0.00
func getPriceCoin(symbol: String) -> String {
    let decoder = JSONDecoder()
    
    // Get Json from Binance API
    let urlString = "https://api.binance.com/api/v3/ticker/price?symbol=\(symbol)"
    // Try to convert string to URL
    if let url = URL(string: urlString) {
        // Try to get data drom answer
        if let data = try? Data(contentsOf: url) {
            // Try to decode answer from get
            if let product = try? decoder.decode(Price.self, from: data) {
                // Converted String to Double, because when string cut to dot getting 0.000
                let price: Double = Double(product.price)!
                print(#line, #function, String(format: "%.02f", price))
                return (String(format: "%.02f", price))
            } else {
                print("error")
            }
        }
    }
    return "error"
}
