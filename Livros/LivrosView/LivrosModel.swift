//
//  LivrosModel.swift
//  Livros
//
//  Created by Eric Sousa on 2/2/23.
//

import Foundation

var livros = Livros()

let pathString = Bundle.main.path(forResource: "data", ofType: "json")

// Check if pathString is not nil, otherwise...
guard pathString != nil else {
    return [Livros]()
}

// Create a url object
let url = URL(fileURLWithPath: pathString!)

do {
    // Create a data object
    let data = try Data(contentsOf: url)
    
    // Decode the data with a JSON decoder
    let decoder = JSONDecoder()
    
    do {
        
        let recipeData = try decoder.decode([Livros].self, from: data)
        
      
        
        // Return the recipes
        return livrosData
        
    }
    catch {
        // error with parsing json
        print(error)
    }
}
catch {
    // error with getting data
    print(error)
}

return [Livros]()
