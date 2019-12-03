//
//  ViewController.swift
//  CommonTestRevision2019
//
//  Created by MAD2_P03 on 3/12/19.
//  Copyright © 2019 Dave Huan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtRecipeName: UITextField!
    @IBOutlet weak var txtPreparationTime: UITextField!
    
    @IBOutlet weak var txtIngredient1: UITextField!
    
    let recipeController:RecipeController = RecipeController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnAdd(_ sender: Any) {
        
        let recipe:Recipe = Recipe(name: txtRecipeName.text!, preparationTime: Int16(txtPreparationTime.text!)!)
        
        let ingredient1:Ingredient = Ingredient(name: txtIngredient1.text!)
        
        recipeController.AddRecipe(recipe: recipe)
        recipeController.AddIngredient(recipe: recipe, ingredient: ingredient1)
        
        // alert if successful
    }
    
}

