//
//  RecipeDetailView.swift
//  RecipeApp
//
//  Created by Administrator on 6/29/21.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe
    

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                //MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
        
                //MARK: Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.vertical)
                    
                    ForEach (recipe.ingredients, id:\.self) { item in
                        Text("- " + item)
                            .padding(.bottom, 1.0)
                    }
                }
                .padding(.horizontal)
                //MARK: Divider
                Divider()
                //MARK: Directions
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.headline)
                        .padding(.vertical)
                    ForEach(0..<recipe.directions.count, id: \.self) { index in
                        Text(String(index + 1) + ". " + recipe.directions[index])
                            .padding(.bottom, 5.0)
                    }
                }
                .padding(.horizontal)
                
            }
            
        }
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
