//
//  DataService.swift
//  Coder Gear
//
//  Created by Serena Lambert on 10/11/2019.
//  Copyright © 2019 Serena Lambert. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts"),
        Category(title: "HOODIES", imageName: "hoodies"),
        Category(title: "HATS", imageName: "hats"),
        Category(title: "DIGITAL", imageName: "digital")
    ]
    
    private let shirts: [Product] = [
        Product(name: "Devslopes Logo Graphic T-Shirt", price: "$25", imageName: "shirt01"),
        Product(name: "Devslopes Logo Graphic T-Shirt", price: "$25", imageName: "shirt02"),
        Product(name: "Devslopes Logo Graphic T-Shirt", price: "$25", imageName: "shirt03"),
        Product(name: "Devslopes Logo Graphic T-Shirt", price: "$25", imageName: "shirt04"),
        Product(name: "Devslopes Logo Graphic T-Shirt", price: "$25", imageName: "shirt05")
    ]
    
    private let hoodies: [Product] = [
        Product(name: "Devslopes Logo Graphic Hoodie", price: "$35", imageName: "hoodie01"),
        Product(name: "Devslopes Logo Graphic Hoodie", price: "$35", imageName: "hoodie02"),
        Product(name: "Devslopes Logo Graphic Hoodie", price: "$35", imageName: "hoodie03"),
        Product(name: "Devslopes Logo Graphic Hoodie", price: "$35", imageName: "hoodie04")
    ]
    
    private let hats: [Product] = [
        Product(name: "Devslopes Logo Beanie", price: "$12", imageName: "hat01"),
        Product(name: "Devslopes Logo Beanie", price: "$12", imageName: "hat02"),
        Product(name: "Devslopes Logo Beanie", price: "$12", imageName: "hat03"),
        Product(name: "Devslopes Logo Beanie", price: "$12", imageName: "hat04")
    ]
    
    private let digital = [Product]()

    
    func getProducts(forCategory title: String) -> [Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigital()
        default:
            return getShirts()
        }
    }
    
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getDigital() -> [Product] {
        return digital
    }
    
}
