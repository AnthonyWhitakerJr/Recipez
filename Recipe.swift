//
//  Recipe.swift
//  Recipez
//
//  Created by Anthony Whitaker on 7/31/16.
//  Copyright © 2016 Anthony Whitaker. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Recipe: NSManagedObject {

    func setRecipeImage(_ image: UIImage?) {
        guard let img = image else {
            self.image = nil
            return
        }
        
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getRecipeImage() -> UIImage? {
        if let data = self.image as Data {
            let image = UIImage(data: data)
            return image
        }
        
        return nil
    }
}
