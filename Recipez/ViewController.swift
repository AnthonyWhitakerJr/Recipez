//
//  ViewController.swift
//  Recipez
//
//  Created by Anthony Whitaker on 7/31/16.
//  Copyright © 2016 Anthony Whitaker. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var recipes = [Recipe]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        fetchAndSetResults()
        tableView.reloadData()
    }

    func fetchAndSetResults() {
        let app = UIApplication.shared.delegate as! AppDelegate
        let context = app.managedObjectContext
        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = Recipe.fetchRequest()

        do {
            let results = try context.fetch(fetchRequest)
            self.recipes = results as! [Recipe]
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell") as? RecipeCell {
            let recipe = recipes[(indexPath as NSIndexPath).row]
            cell.configureCell(recipe)
            return cell
        }
        return RecipeCell()
    }

}

