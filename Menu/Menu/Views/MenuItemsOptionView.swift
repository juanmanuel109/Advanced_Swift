//
//  MenuItemsOptionView.swift
//  Menu
//
//  Created by Juan Manuel Ordoñez on 22/04/24.
//

import SwiftUI

struct MenuItemsOptionView: View {
    
    @EnvironmentObject var viewModel: MenuVieViewModel
    
    var body: some View {
        NavigationStack {
            List {
                Section("selected categories"){
                    Toggle(MenuCategory.food.rawValue, isOn: $viewModel.isShowFood)
                    Toggle(MenuCategory.drink.rawValue, isOn: $viewModel.isShowDrinks)
                    Toggle(MenuCategory.dessert.rawValue, isOn: $viewModel.isShowDesserts)
                }
                Picker("Sort By", selection: $viewModel.sortBy) { 
                    ForEach(SortBy.allCases, id: \.self){ category in Text(category.rawValue).tag(category)
                        
                    }
                    
                }
                
            }
             .pickerStyle(.inline)
             .listStyle(.grouped)
        }
        .navigationTitle("Filter")
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView().environmentObject(MenuVieViewModel())
    }
}

