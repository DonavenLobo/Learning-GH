//
//  Ingredient.swift
//  RecipeApp
//
//  Created by Administrator on 6/30/21.
//

import Foundation

class Ingredient: Identifiable, Decodable {
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
}
