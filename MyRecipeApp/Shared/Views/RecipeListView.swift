//
//  RecipeListView.swift
//  MyRecipeApp
//
//  Created by Thongchai Subsaidee on 2/10/21.
//

import SwiftUI

enum FilterCourse: String, CaseIterable, Identifiable {
    
    case all = "All"
    case starters = "Starters"
    case entrees = "Entrees"
    case desserts = "Desserts"
    
    var id: FilterCourse {self}
    
}

struct RecipeListView: View {
    
    let recipes: [Recipe]
    @State private var filter = FilterCourse.all
    
    var filterRecipe: [Recipe] {
        recipes.filter { recipe in
            (filter == .all) || (recipe.course.rawValue == filter.rawValue)
        }
    }
    
    var body: some View {
        List(filterRecipe) { recipe in
            NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                HStack {
                    Image(recipe.photo)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                    Text(recipe.name)
                        .font(.headline)
                }
                .padding(6)
            }
        }
        .toolbar {
            ToolbarItem {

                Menu {
                    Picker("Course", selection: $filter) {
                        ForEach(FilterCourse.allCases) {
                            Text($0.rawValue)
                                .tag($0)
                        }
                    }
                } label: {
                    Label("Fillter", systemImage: "slider.horizontal.3")
                }

            }
        }
        
        .navigationTitle(Text("Recipes"))
    }
    
}


struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RecipeListView(recipes: Recipe.all() )
        }
    }
}
