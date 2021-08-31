//
//  MealViewController.swift
//  MealViewController
//
//  Created by Evgeniy Goncharov on 18.08.2021.
//

import UIKit

class CoinViewController: UIViewController {
    
    // MARK: - Properties
    var coin: Coin!
    
    // MARK: - IBOutlets
    @IBOutlet weak var coinName: UILabel!
    @IBOutlet weak var coinPhoto: UIImageView!
    @IBOutlet weak var coinNotes: UITextView!
    @IBOutlet weak var coinRating: UILabel!
    @IBOutlet weak var coinPrice: UILabel!
    @IBOutlet weak var coinScroiView: UIScrollView!
    @IBOutlet weak var coinInfoLabel: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    //self.coinScroiView.delaysContentTouches = false
        
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Methods
    func updateUI() {
        coinName.text = coin.name
        coinPhoto.image = coin.photo
        coinNotes.text = coin.notes
        coinNotes.sizeToFit()
        coinRating.text = coin.stars
        coinInfoLabel.text = "Цена \(coin.name) (\(coin.symbol.replacingOccurrences(of: "USDT", with: "")))"
        coinPrice.text = "\(coin.name) = \(getPriceCoin(symbol: coin.symbol)) $"
    }
    

    
    //MARK: - IBActions
    @IBAction func updatePrace(_ sender: UIButton) {
        coinPrice.text = "\(coin.name) = \(getPriceCoin(symbol: coin.symbol)) $"
    }
    
}

