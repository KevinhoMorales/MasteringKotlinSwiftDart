//
//  IntermediateConcurrency.swift
//  MasteringSwift
//
//  Capítulo 13 — Concurrencia y asincronía.
//  Nivel INTERMEDIO: async/await — obtener usuario, simular API, await antes de imprimir.
//
//  Llamar desde la app: Task { await runIntermediateConcurrencyExamples() }
//

import Foundation

func fetchUser() async -> String {
    try? await Task.sleep(nanoseconds: 100_000_000)
    return "User(Alice)"
}

func simulateApiRequest() async -> String {
    try? await Task.sleep(nanoseconds: 150_000_000)
    return "API response: OK"
}

func runIntermediateConcurrencyExamples() async {
    // --- Esperar resultado antes de imprimir ---
    let user = await fetchUser()
    print("Fetched: \(user)")

    let response = await simulateApiRequest()
    print(response)

    // --- Ejecutar dos solicitudes y esperar ambas (en paralelo) ---
    async let u = fetchUser()
    async let r = simulateApiRequest()
    let (userResult, apiResult) = await (u, r)
    print("Combined: \(userResult), \(apiResult)")
}
