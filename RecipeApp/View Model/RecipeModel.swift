//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by Administrator on 6/28/21.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    
    init() {
        self.recipes = DataService.getLocalData()
        
    }
    
    
}
