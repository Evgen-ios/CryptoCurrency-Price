//
//  ViewController.swift
//  MVC Welcome
//
//  Created by Evgeniy Goncharov on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var tableView: UITableView!
    @IBOutlet weak var navigationView: UINavigationItem!
    
    // MARK: Private Properties
    private var coins = Coin.all

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        // Add UINavigationItem title
        navigationView.title = "Crypto coins"
        navigationView.backButtonTitle = "Back"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "MealSegue" else { return }
        guard let selectedPath = tableView.indexPathForSelectedRow else { return }
        let destination = segue.destination as! CoinViewController
        destination.coin = coins[selectedPath.row]
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coins.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell")!
        
        // Config cell...
        let meal = coins[indexPath.row]
        cell.detailTextLabel?.text = meal.stars
        cell.imageView?.image = meal.photo
        cell.textLabel?.text = meal.name    
        return cell
        
        
    }
    
}

