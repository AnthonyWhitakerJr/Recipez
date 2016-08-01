//
//  CreateRecipeViewController.swift
//  Recipez
//
//  Created by Anthony Whitaker on 8/1/16.
//  Copyright © 2016 Anthony Whitaker. All rights reserved.
//

import UIKit

class CreateRecipeViewController: UIViewController {

    @IBOutlet weak var recipeTitle: UITextField!
    @IBOutlet weak var recipeIngredients: UITextField!
    @IBOutlet weak var recipeSteps: UITextField!
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var addImageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addImageButtonPressed(sender: UIButton) {
    }

    @IBAction func createRecipeButtonPressed(sender: AnyObject) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
