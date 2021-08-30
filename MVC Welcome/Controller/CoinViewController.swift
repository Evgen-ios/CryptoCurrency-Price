//
//  MealViewController.swift
//  MealViewController
//
//  Created by Evgeniy Goncharov on 18.08.2021.
//

import UIKit

class CoinViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var coinName: UILabel!
    @IBOutlet weak var coinPhoto: UIImageView!
    @IBOutlet weak var coinNotes: UITextView!
    @IBOutlet weak var coinRating: UILabel!
    @IBOutlet weak var coinPrice: UILabel!
    
    
    var coin: Coin!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: Private Methods
    private func updateUI() {
        coinName.text = coin.name
        coinPhoto.image = coin.photo
        coinNotes.text = coin.notes
        coinRating.text = coin.stars
        coinPrice.text = coin.formatedTimeStamp
        getPriceCoin(symbol: coin.symbol)
    
    }
}
