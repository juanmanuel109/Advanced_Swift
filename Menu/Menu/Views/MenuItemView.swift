//
//  MenuItemView.swift
//  Menu
//
//  Created by Juan Manuel Ordoñez on 22/04/24.
//


import SwiftUI

struct MenuItemView: View {
    
    @EnvironmentObject var viewModel: MenuVieViewModel
    
    init(menuItems: [MenuItem], menuCategory: MenuCategory) {
        self.menuItems = menuItems
        self.menuCategory = menuCategory
    }
    
    var menuItems: [MenuItem]
    
    var menuCategory: MenuCategory
    
    // Used in Lazy grid to create a 3 item wide grid
    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack {
            HStack {
                Text(menuCategory.rawValue)
                    .font(.title)
                    .fontWeight(.medium)
                Spacer()
            }

            LazyVGrid(columns: threeColumnGrid) {
                ForEach((menuItems), id: \.self) { menuItem in
                    
                    NavigationLink(destination: MenuItemDetailsView(menuItem: menuItem)) {
                       
                        VStack {
                            Rectangle()
                            Text(menuItem.title)
                        }
                        .frame(height: 120)
                        .foregroundColor(.black)
                    }
                }
            }
        }
        .padding()
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = MenuVieViewModel()
        MenuItemView(menuItems: viewModel.foods, menuCategory: .food)
    }
}

