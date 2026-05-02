//
//  BasicConcurrency.swift
//  MasteringSwift
//
//  Capítulo 13 — Concurrencia y asincronía.
//  Nivel BÁSICO: Ejecución retrasada, simular solicitud de red (Swift async/await).
//
//  Llamar desde la app: Task { await runBasicConcurrencyExamples() }
//

import Foundation

func runBasicConcurrencyExamples() async {
    // --- Imprimir mensaje después del retraso ---
    print("Before delay")
    try? await Task.sleep(nanoseconds: 100_000_000) // 0.1 sec
    print("After delay (100ms)")

    // --- Simular solicitud de red con retraso (se ejecuta en paralelo) ---
    let task = Task {
        print("Request started...")
        try? await Task.sleep(nanoseconds: 200_000_000)
        print("Request completed (simulated 200ms)")
    }
    try? await Task.sleep(nanoseconds: 50_000_000)
    print("Main continues while request runs")
    await task.value
}
