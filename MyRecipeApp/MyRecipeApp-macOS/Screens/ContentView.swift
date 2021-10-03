//
//  ContentView.swift
//  MyRecipeApp-macOS
//
//  Created by Thongchai Subsaidee on 2/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            RecipeListView(recipes: Recipe.all())
                .frame(minWidth: 300)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
