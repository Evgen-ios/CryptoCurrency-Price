//
//  MealViewController.swift
//  MealViewController
//
//  Created by Evgeniy Goncharov on 18.08.2021.
//

import UIKit

class MealViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var mealName: UILabel!
    @IBOutlet weak var mealPhoto: UIImageView!
    @IBOutlet weak var mealNotes: UITextView!
    @IBOutlet weak var maelRating: UILabel!
    @IBOutlet weak var mealTimeStamp: UILabel!
    
    
    var meal: Coin!
    
    private struct Price: Codable {
        var symbol: String
        var price: Double
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: Private Methods
    private func updateUI() {
        mealName.text = meal.name
        mealPhoto.image = meal.photo
        mealNotes.text = meal.notes
        maelRating.text = meal.stars
        mealTimeStamp.text = meal.formatedTimeStamp
        getPriceCoin(symbol: meal.symbol)
    }
    
    private func getPriceCoin(symbol: String) {
        let urlString = "https://api.binance.com/api/v3/ticker/price?symbol=\(symbol)"
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {
                print(#line, #function, String(decoding: data, as: UTF8.self))
                parse(json: data)
            }
        }
    }
    
    private func parse(json: Data) {
        let decoder = JSONDecoder()
        if let product = try? decoder.decode(Price.self, from: json){
            print(#line,#function, product.symbol, product.price) 
        }
    }
}
