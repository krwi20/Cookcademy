//
//  RecipeData.swift
//  Cookcademy
//
//  Created by Kris Wittwer on 16/03/2023.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}
