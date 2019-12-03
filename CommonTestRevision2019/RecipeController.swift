//
//  RecipeController.swift
//  CommonTestRevision2019
//
//  Created by MAD2_P03 on 3/12/19.
//  Copyright © 2019 Dave Huan. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class RecipeController
{
    
    func AddRecipe(recipe:Recipe){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "CDRecipe", in: context)
        let cdRecipe = NSManagedObject(entity: entity!, insertInto: context)
        
        cdRecipe.setValue(recipe.name, forKey: "name")
        cdRecipe.setValue(recipe.preparationTime, forKey: "preparationTime")
        
        appDelegate.saveContext()
    }
    
    func AddIngredient(recipe:Recipe, ingredient:Ingredient){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "CDIngredient", in: context)
        let cdIngredient = NSManagedObject(entity: entity!, insertInto: context)
        
        cdIngredient.setValue(recipe.name, forKey: "name")
        
        appDelegate.saveContext()
    }
    
    func RetrieveRecipe()->[Recipe]{
        var recipeList:[Recipe] = []
        
        return recipeList
    }
    
    func RetrieveIngredientFromRecipe()->[Ingredient]{
        var ingredientList:[Ingredient] = []
        return ingredientList
    }
}
