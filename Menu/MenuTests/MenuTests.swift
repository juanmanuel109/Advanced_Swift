//
//  MenuTests.swift
//  MenuTests
//
//  Created by Juan Manuel Ordoñez on 22/04/24.
//

import XCTest
@testable import Menu

final class LittleLemonDinnerMenuTests: XCTestCase {
    let viewModel = MenuVieViewModel()
    
    func test_checkFoodTitle() {
        let foodTitle = viewModel.foods[0]
        XCTAssertEqual(foodTitle.title, "Food 4")
    }
    
    func test_checkIngredient() {
        let foodIngredient = viewModel.foods[0]
        XCTAssertEqual(foodIngredient.ingredient, [.tomatoSauce, .carrot, .pasta])
    }

}
