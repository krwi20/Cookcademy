//
//  RecipeCategoryGridView.swift
//  Cookcademy
//
//  Created by Kris Wittwer on 17/03/2023.
//

import SwiftUI

struct RecipeCategoryGridView: View {
    
    @EnvironmentObject private var recipeData: RecipeData

    var body: some View {
        let columns = [GridItem(), GridItem()]
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, content: {
                    ForEach(MainInformation.Category.allCases, id: \.self) { category in
                        NavigationLink(
                            destination: RecipesListView(viewStyle: .singleCategory(category)),
                            label: {
                                CategoryView(category: category)
                            })
                    }
                })
            }
            .navigationTitle("Categories")
        }
    }
}

struct CategoryView: View {
    
    let category: MainInformation.Category
    
    var body: some View {
        ZStack {
            Image(category.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.35)
            Text(category.rawValue)
                .font(.title)
        }
    }
}

struct RecipeCategoryGrid_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCategoryGridView()
    }
}
