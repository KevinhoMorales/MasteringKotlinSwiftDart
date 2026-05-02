//
//  AdvancedMultiplatform.swift
//  MasteringSwift
//
//  Capítulo 18 — Desarrollo multiplataforma.
//  Nivel AVANZADO: ProductService — capa de servicio compartida.
//

import Foundation

fileprivate struct Product {
    let id: String
    let name: String
    let price: Double
    let category: String
}

fileprivate enum ProductService {
    static func fetchProducts() -> [Product] {
        [
            Product(id: "1", name: "Widget A", price: 29.99, category: "tools"),
            Product(id: "2", name: "Widget B", price: 49.99, category: "tools"),
            Product(id: "3", name: "Gadget X", price: 19.99, category: "electronics")
        ]
    }

    static func filterProducts(_ products: [Product], category: String) -> [Product] {
        products.filter { $0.category == category }
    }

    static func calculateDiscount(price: Double, percent: Double) -> Double {
        price * (1 - percent / 100)
    }
}

func runAdvancedMultiplatformExamples() {
    print("========================================")
    print("       PRODUCT SERVICE (shared logic)")
    print("========================================")
    let all = ProductService.fetchProducts()
    print("All products: \(all)")
    let filtered = ProductService.filterProducts(all, category: "tools")
    print("Filtered (tools): \(filtered)")
    let discounted = ProductService.calculateDiscount(price: 49.99, percent: 10)
    print("Discount 10% on 49.99: \(discounted)")
    print("========================================")
}
