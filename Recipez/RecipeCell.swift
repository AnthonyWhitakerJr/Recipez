//
//  RecipeCell.swift
//  Recipez
//
//  Created by Anthony Whitaker on 7/31/16.
//  Copyright © 2016 Anthony Whitaker. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {

    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var recipeImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(_ recipe: Recipe) {
        recipeTitle.text = recipe.title
        recipeImage.image = recipe.getRecipeImage()
    }

}
