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
    
    
    var meal: Meal!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }


    func updateUI() {
        mealName.text = meal.name
        mealPhoto.image = meal.photo
        mealNotes.text = meal.notes
        maelRating.text = meal.stars
        mealTimeStamp.text = meal.formatedTimeStamp
        
    }
}
