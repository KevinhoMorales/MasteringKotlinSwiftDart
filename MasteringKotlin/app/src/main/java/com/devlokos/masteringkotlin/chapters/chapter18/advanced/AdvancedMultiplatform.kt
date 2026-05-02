package com.devlokos.masteringkotlin.chapters.chapter18.advanced

/**
 * Capítulo 18 — Desarrollo Multiplataforma.
 * Nivel AVANZADO: ProductService — fetchProducts, filterProducts, calculateDiscount.
 * Simula una capa de servicio que podría compartirse entre apps móviles (Android, iOS, etc.).
 */
fun main() {
    runAdvancedMultiplatformExamples()
}

data class Product(val id: String, val name: String, val price: Double, val category: String)

object ProductService {
    fun fetchProducts(): List<Product> = listOf(
        Product("1", "Widget A", 29.99, "tools"),
        Product("2", "Widget B", 49.99, "tools"),
        Product("3", "Gadget X", 19.99, "electronics")
    )

    fun filterProducts(products: List<Product>, category: String): List<Product> =
        products.filter { it.category == category }

    fun calculateDiscount(price: Double, percent: Double): Double =
        price * (1 - percent / 100)
}

fun runAdvancedMultiplatformExamples() {
    println("========================================")
    println("       PRODUCT SERVICE (shared logic)")
    println("========================================")
    val all = ProductService.fetchProducts()
    println("All products: $all")
    val filtered = ProductService.filterProducts(all, "tools")
    println("Filtered (tools): $filtered")
    val discounted = ProductService.calculateDiscount(49.99, 10.0)
    println("Discount 10% on 49.99: $discounted")
    println("========================================")
}
