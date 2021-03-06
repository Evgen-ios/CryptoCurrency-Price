//
//  CoinModel.swift
//  CoinModel
//
//  Created by Evgeniy Goncharov on 18.08.2021.
//

import Foundation
import UIKit

struct CoinModel {
    var name: String
    var photo: UIImage
    var notes: String
    var rating: Int
    var timestamp: Date
    var symbol: String
}


 //MARK: -  Data Representaion
extension CoinModel {
    var stars: String {
        String(repeating: "⭐️", count: rating)
    }
    
    var formatedTimeStamp: String {     
        let format = DateFormatter()
        format.dateStyle = .short
        format.timeStyle = .short
        format.locale = Locale.current
        return format.string(from: timestamp)
    }
}

// Coint content
extension CoinModel {
    static var all: [CoinModel] {
        return [
            CoinModel(name: "Bitcoin", photo: UIImage(named: "bitcoin")!, notes: "Bitcoin is a distributed, worldwide, decentralized digital money. Bitcoins are issued and managed without any central authority whatsoever: there is no government, company, or bank in charge of Bitcoin.", rating: 10, timestamp: Date(), symbol: "BTCUSDT"),
            CoinModel(name: "Cardano", photo: UIImage(named: "cardano")!, notes: "Cardano is a decentralised public blockchain and cryptocurrency project and is fully open source. Cardano is developing a smart contract platform which seeks to deliver more advanced features than any protocol previously developed. It is the first blockchain platform to evolve out of a scientific philosophy and a research-first driven approach.", rating: 6, timestamp: Date(), symbol: "ADAUSDT"),
            CoinModel(name: "Dogecoin", photo: UIImage(named: "dogecoin")!, notes: "Dogecoin is a cryptocurrency that runs on blockchain technology, similarly to Bitcoin and Ethereum. Blockchain is a distributed, secure digital ledger that stores all transactions made using a decentralized digital currency.", rating: 7, timestamp: Date(), symbol: "DOGEUSDT"),
            CoinModel(name: "Ethereum", photo: UIImage(named: "ethereum")!, notes: "Ethereum is a technology that's home to digital money, global payments, and applications. The community has built a booming digital economy, bold new ways for creators to earn online, and so much more. It's open to everyone, wherever you are in the world – all you need is the internet.", rating: 9, timestamp: Date(), symbol: "ETHUSDT"),
            CoinModel(name: "Litecoint", photo: UIImage(named: "litecoin")!, notes: "Litecoin is a peer-to-peer Internet currency that enables instant, near-zero cost payments to anyone in the world. Litecoin is an open source, global payment network that is fully decentralized. ", rating: 6, timestamp: Date(), symbol: "LTCUSDT"),
            CoinModel(name: "Monero", photo: UIImage(named: "monero")!, notes: "Monero is an open-source, privacy-oriented cryptocurrency that was launched in 2014. Its blockchain is opaque, which makes transaction details and the amount of every transaction anonymous by disguising the addresses used by participants.", rating: 8, timestamp: Date(), symbol: "XMRUSDT"),
            CoinModel(name: "Polcadot", photo: UIImage(named: "polkadot")!, notes: "Polkadot is built to connect private and consortium chains, public and permissionless networks, oracles, and future technologies that are yet to be created. Polkadot facilitates an internet where independent blockchains can exchange information and transactions in a trustless way via the Polkadot relay chain.", rating: 5, timestamp: Date(), symbol: "DOTUSDT"),
            CoinModel(name: "Solana", photo: UIImage(named: "solana")!, notes: "Solana is a web-scale blockchain that provides fast, secure, scalable, decentralized apps and marketplaces. ... So this would allow transaction throughput to scale proportionally with network bandwidth satisfying all properties of a blockchain: scalability, security and decentralization.", rating: 7, timestamp: Date(), symbol: "SOLUSDT"),
            CoinModel(name: "Avalanche", photo: UIImage(named: "avalanche")!, notes: "Avalanche is the fastest smart contracts platform in the blockchain industry, as measured by time-to-finality, and has the most validators securing its activity of any proof-of-stake protocol.", rating: 10, timestamp: Date(), symbol: "AVAXUSDT"),
            CoinModel(name: "Terra", photo: UIImage(named: "usd-coin")!, notes: "Terra (terra.money) is a decentralized financial payment network that rebuilds the traditional payment stack on the blockchain. It utilizes a basket of fiat-pegged stablecoins, algorithmically stabilized by its reserve currency LUNA, to facilitate programmable payments and open financial infrastructure development.", rating: 8, timestamp: Date(), symbol: "LUNAUSDT"),
            CoinModel(name: "WAX", photo: UIImage(named: "wax")!, notes: "WAX is a decentralized platform that enables anyone to operate a fully functioning virtual marketplace with zero investment in security, infrastructure, or payment processing. Developed by the founders of OPSkins, the world’s leading marketplace for online video game assets, WAX coin is designed to serve the 400+ million online players who already collect, buy and sell in-game items.", rating: 10, timestamp: Date(), symbol: "WAXPUSDT"),
            CoinModel(name: "XRP", photo: UIImage(named: "xrp")!, notes: "XRP is the native cryptocurrency for products developed by Ripple Labs. Its products are used for payment settlement, asset exchange, and remittance systems that work more like SWIFT, a service for international money and security transfers used by a network of banks and financial intermediaries.", rating: 3, timestamp: Date(), symbol: "XRPUSDT"),
            CoinModel(name: "ZCash", photo: UIImage(named: "zcash")!, notes: "ZCash is a cryptocurrency with a decentralized blockchain that seeks to provide anonymity for its users and their transactions. ZCash increases user privacy by using zero-knowledge proofs (zk-SNARKs) to validate transactions without revealing information that could compromise a user's privacy.", rating: 8, timestamp: Date(), symbol: "ZECUSDT"),
                 
        ]
    }
}
