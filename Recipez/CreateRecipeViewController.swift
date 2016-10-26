//
//  CreateRecipeViewController.swift
//  Recipez
//
//  Created by Anthony Whitaker on 8/1/16.
//  Copyright © 2016 Anthony Whitaker. All rights reserved.
//

import UIKit
import CoreData

class CreateRecipeViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var recipeTitle: UITextField!
    @IBOutlet weak var recipeIngredients: UITextField!
    @IBOutlet weak var recipeSteps: UITextField!
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var addImageButton: UIButton!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        recipeImage.layer.cornerRadius = 4.0
        recipeImage.clipsToBounds = true
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismiss(animated: true)
        recipeImage.image = image
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if (recipeImage.image != nil) {
            addImageButton.setTitle("", for: UIControlState())
        }
    }
    
    @IBAction func addImageButtonPressed(_ sender: UIButton) {
        present(imagePicker, animated: true)
    }
    
    @IBAction func createRecipeButtonPressed(_ sender: AnyObject) {
        if let title = recipeTitle.text , !title.isBlank {
            let app = UIApplication.shared.delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entity(forEntityName: "Recipe", in: context)!
            let recipe = Recipe(entity: entity, insertInto: context)
            
            recipe.title = title.trim
            recipe.ingredients = recipeIngredients.text?.trim
            recipe.steps = recipeSteps.text?.trim
            recipe.setRecipeImage(recipeImage.image)
                        
            do {
                try context.save()
            } catch {
                print("Could not save recipe:\(title)")
            }
            
            self.navigationController?.popViewController(animated: true)
        }
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
