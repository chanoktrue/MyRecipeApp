//
//  Recipe.swift
//  MyRecipeApp-iOS
//
//  Created by Thongchai Subsaidee on 2/10/21.
//

import Foundation

enum Course: String {
    case all = "All"
    case starters = "Starters"
    case entrees = "Entrees"
    case desserts = "Desserts"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let photo: String
    let description: String
    let rating: Int?
    let course: Course
}

extension Recipe {
    
    static func all() -> [Recipe] {
        return [
            
            Recipe(
            name: "Chicken Nuggets",
            photo: "chickennuggets8a2c",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            rating: 4,
            course: .starters),
                
            Recipe(
                name: "Roast Sticky Chicken Rotisserie Style",
                photo: "464580296",
                description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                rating: 5,
                course: .entrees),
                        
            Recipe(
                name: "Mini Cheeseburgers",
                photo: "cheeseburger.jpg",
                description: "These mini cheeseburgers are served on a fresh baked pretzel bun with lettuce, tomato, avocado, and your choice of cheese. ",
                rating: 5,
                course: .starters),
            
            Recipe(
                name: "Cheesecake",
                photo: "cheesecake.jpg",
                description: "Our New York Style Cheesecake is rich, smooth, and creamy. Available in various flavors, and with seasonal",
                rating: 4,
                course: .desserts)
            ]
    }
}
